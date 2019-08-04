require "yaml"

def load_library(path)
  hash = YAML.load_file(path)
end

def get_japanese_emoticon(emoticon)
  hash = load_library("./lib/emoticons.yml")
  hash.each do |meaning, symbols|
    if symbols[0] === emoticon
      return symbols[1]
    end
  end
end

def get_english_meaning
  # code goes here
end