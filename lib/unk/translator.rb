
class Unk::Translator
  def initialize(language)
    @language = language
  end
  def hi
  case @language
    when "english"
      p "hello world"
    when "spanish"
      p "hola mundo"
    else
      p "hello world"
    end
  end
end
