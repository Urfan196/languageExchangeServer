
languages = ["Amharic",	
    "Arabic",	
    "Basque",	
    "Bengali",	
    "English (UK)",	
    "Portuguese",
    "Bulgarian",	
    "Catalan",
    "Cherokee",	
    "Croatian",
    "Czech",
    "Danish",
    "Dutch",
    "English (US)",
    "Estonian",
    "Filipino",
    "Finnish",
    "French",
    "German",
    "Greek",
    "Gujarati",
    "Hebrew",
    "Hindi",	
    "Hungarian",	
    "Icelandic",	
    "Indonesian",	
    "Italian",	
    "Japanese",	
    "Kannada",	
    "Korean",	
    "Latvian",
    "Lithuanian",	
    "Malay",	
    "Malayalam",	
    "Marathi",	
    "Norwegian",	
    "Polish",	
    "Portuguese (Portugal)",
    "Romanian",
    "Russian",	
    "Serbian",
    "Chinese (PRC)",
    "Slovak",	
    "Slovenian",	
    "Spanish",	
    "Swahili",
    "Swedish",	
    "Tamil",	
    "Telugu",
    "Thai",	
    "Chinese (Taiwan)",	
    "Turkish",	
    "Urdu",
    "Ukrainian",
    "Vietnamese",	
    "Welsh"
]


languages.each do |language|
    Language.create(name: language)
end

user_1 = User.create(first_name: "John", last_name: "Doe", birthday: "21/01/1990", password_digest: "1234@T123t", username: "johndoe@fakeemail.com" )
user_2 = User.create(first_name: "Jane", last_name: "Doe", birthday: "13/05/1989", password_digest: "hello456ft", username: "janedoe@fakeemail.com" )
user_3 = User.create(first_name: "Carl", last_name: "Allen", birthday: "30/11/1947", password_digest: "idc147ll", username: "carlallen@fakeemail.com" )



beginner = Fluency.create(level: "Beginner", user_id: rand(1..3), language_id: rand(0..20))
elementary = Fluency.create(level: "Elementary", user_id: rand(1..3), language_id: rand(0..20))
intermediate = Fluency.create(level: "Intermediate", user_id: rand(1..3), language_id: rand(0..20))
advanced = Fluency.create(level: "Advanced", user_id: rand(1..3), language_id: rand(0..20))
expert = Fluency.create(level: "Expert", user_id: rand(1..3), language_id: rand(0..20))
native = Fluency.create(level: "Native", user_id: rand(1..3), language_id: rand(0..20))
