require "stringer/version"

module Stringer
  def self.spacify *strings
    string = "" 
    strings.each do |s|
      if s == strings.first
        string += s
      else
      string += " " + s
      end
    end
    string
  end
  def self.minify text, len
    if len > text.length
      return text
    end
    mini_text = text[0..len]
    str1 = "#{mini_text}".strip
    str2 = "...".strip
    str = str1 + str2
    str
  end
  def self.replacify text, word, replace
    text_array = text.split(' ')
    text_array.map! do |elem| 
      if elem == word
        replace
      else
        elem
      end
    end
    text_array.join(' ')
  end
  def self.tokenize text
    text_array = text.split(' ')
  end
  def self.removify text, remove
    text_array = text.split(' ')
    new_array = text_array - [remove]
    new_array.join(' ')

  end

end
