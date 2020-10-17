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
=begin
def get_english_meaning(file, emoticon)
  # code goes here
  new_library = load_library(file)
  library = YAML.load_file(file)
  new_library = {"get_meaning" => {},
                 "get_emoticon" => {}}
   library.each do |meaning, value| 
     new_library["get_meaning"][value[1]] = meaning 
     new_library["get_emoticon"][value[0]] = value[1]
   end 
     english_meaning = new_library["get_meaning"]
    end 
    
   value.each do |english, japanese|
   if english == emoticon 
     return japanese
  else 
    return "Sorry, that emoticon was not found"
  end
end 
end 
=end 
def get_japanese_emoticon(file, emoticon)
  # code goes here 
  new_library = load_library(file)
  library = YAML.load_file(file)
  new_library = {"get_meaning" => {},
                 "get_emoticon" => {}}
   library.each do |meaning, value| 
     new_library["get_meaning"][value[1]] = meaning 
     new_library["get_emoticon"][value[0]] = value[1]
   end 
     english_meaning = new_library["get_emoticon"][emoticon]
     english_meaning ? english_meaning : "Sorry, that emoticon was not found"
    end