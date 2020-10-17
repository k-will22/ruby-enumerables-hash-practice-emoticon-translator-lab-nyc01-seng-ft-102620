# require modules here
require 'pry'
require 'yaml'

def load_library(file)
  # code goes here
  library = YAML.load_file(file)
  new_library = {}
  library.each do |translation, value|
    new_library[translation] = {"english": value[0], 
    "japanese": value[1]}
    end 
  new_library
end

def get_english_meaning(file, emoticon)
  # code goes here
  emo_library = {}
  new_library = load_library(file)
  new_library.each do |key, value|
     emo_library = value 
binding.pry 
end 
end 
end 

=begin
   value.each do |english, japanese|
   if english == emoticon 
     return japanese
  else 
    return "Sorry, that emoticon was not found"
  end
end 
end 

def get_japanese_emoticon(file, emoticon)
  # code goes here 
  new_library = load_library(file)
 
end
=end 