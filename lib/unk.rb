class Unk
  VERSION = "0.0.3"
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
  def self.options(name)
    puts "Hello #{name} I see you are pretty busy studying, Just thought I (Edozie) should tell you I love you babe"
    sleep 2
    puts "The purpose of this gem is Unknown, hence the name"
    sleep 2
  end

end
require "unk/translator.rb"
