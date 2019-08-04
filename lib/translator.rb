require "yaml"

def load_library(path)
  file = YAML.load_file(path)
  hash = {:get_meaning => {}, :get_emoticon => {}}
  file.each do |meaning, symbols|
    hash[:get_meaning][symbols[1]] = meaning
    hash[:get_emoticon][symbols[0]] = symbols[1]
  end
  hash
end

def get_japanese_emoticon(path, emoticon)
  hash = load_library(path)
  hash.each do |meaning, symbols|
    if symbols[0] === emoticon
      return symbols[1]
    end
  end
end

def get_english_meaning
  # code goes here
end