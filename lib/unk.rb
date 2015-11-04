class Unk
  VERSION = "0.0.1"
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end

end

class Unk::Translator
  def initialize(language)
    @language = language
  end
  def hi
  case @language
    when "english"
      puts "hello world"
    when "spanish"
      puts "hola mundo"
    else
      puts "hello world"
    end
  end
end
