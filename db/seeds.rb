
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

Appointment.destroy_all
Fluency.destroy_all
Availability.destroy_all
Language.destroy_all
User.destroy_all


languages.each do |language|
    Language.create(name: language)
end


