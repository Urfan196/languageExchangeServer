class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.integer :language_id
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
