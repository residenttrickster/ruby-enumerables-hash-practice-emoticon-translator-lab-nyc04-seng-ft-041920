# require modules here
require "yaml"
require 'pry'

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  emoticon_hash = {}

  emoticons.each do |meaning, value|
    if emoticon_hash[meaning] == nil
      emoticon_hash[meaning] = {
        :english => value[0],
        :japanese => value[1]
      }
    end
  end
  emoticon_hash
end

def get_japanese_emoticon(path, emoticon)
  # code goes here
  emoticon_hash = load_library(path)

  emoticon_hash.each do |meaning, value|
  if emoticon == emoticon_hash[meaning][:english]
    puts emoticon_hash[meaning][:japanese]
   end
 end
 puts "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  # code goes here
  emoticon_hash = load_library(path)

  emoticon_hash.each do |meaning, value|
  if emoticon == emoticon_hash[meaning][:japanese]
    return meaning
   end
 end
  return "Sorry, that emoticon was not found"
end
