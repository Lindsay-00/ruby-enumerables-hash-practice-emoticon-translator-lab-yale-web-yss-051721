# require modules here
require "yaml"
require "pry"


def load_library(path)
  key = ''
  emoticons = { key => {:english => "", :japanese => ""}}
  YAML.load_file(path).each do |meaning, describe|
     eng, jan = describe
     emoticons[key] = meaning
     
     emoticons[key][:english] = eng
     emoticons[key][:japanese] = jan
  end
  emoticons
end



#p load_library './lib/emoticons.yml'


def get_japanese_emoticon(path, emoticon)
  emoticons = load_library(path) 
  result = emoticons[:japanese][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end


def get_english_meaning(path, emoticon)
  emoticons = load_library(path)
  result = emoticons[:English][emoticon] 
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end