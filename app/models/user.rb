class User < ApplicationRecord
  has_secure_password
    
  has_many :fluencies
  has_many :languages, through: :fluencies
  has_many :student_appointment, foreign_key: :teacher_id, class_name: "Appointment"
  has_many :students, through: :student_appointment, source: :student
  has_many :teacher_appointment, foreign_key: :student_id, class_name: "Appointment"
  has_many :teachers, through: :teacher_appointment, source: :teacher
  has_many :availabilities
  
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  
  PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
  /x
  validates :password, 
  presence: true, 
  length: { in: 8..20 }, 
  format: { with: PASSWORD_FORMAT }, 
  confirmation: true, 
  on: :create 
  validates :password, 
  allow_nil: true, 
  length: { in: 8..20 }, 
  format: { with: PASSWORD_FORMAT }, 
  confirmation: true, 
  on: :update
end
