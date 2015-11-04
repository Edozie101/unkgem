class Unk
  VERSION = "0.0.4"
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end
  def self.files(filename)
    puts "Im going to find some of your files now "
    sleep 1
    puts "Im thinking .... "
    sleep 1
    begin
      open(filename, "r+")
      `cat #{filename}`
    rescue
      puts "I couldnt find your file..."
      puts "Sorry about that"
    end

  end
  def self.options(name)
    puts "Hello #{name} I see you are pretty busy studying, Just thought I (Edozie) should tell you I love you babe"
    sleep 2
    puts "The purpose of this gem is Unknown, hence the name"
    sleep 2
    puts "However I am working on making your PDFs function better.."
    sleep 1
  end

end
require "unk/translator.rb"
