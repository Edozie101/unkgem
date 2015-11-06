class Unk
  VERSION = "0.0.5"
  def self.hi(language = "english")
    translator = Translator.new(language)
    translator.hi
  end

  def self.find(site)
    #attach the Mechanize object to the variable a , call a block on it and then set
    # the agents features
    a = Mechanize.new {|agent|
      agent.log = Logger.new "mech.log"
      agent.user_agent_alias = "Mac Safari"
    }

    # Testing out with Nokogiris HTML class turns out that you can accsss CSS classes
    # by firt typing out the elemnt name doc.css("li") returns all the li tags
    # doc.css("li")
    # doc = Nokogiri::HTML(open("http://www.bbc.com/"))
    # titles = doc.search("div").text.split("\n").each do |a|
    #   a.strip!
    # end
    # titles.each do |p|
    #   puts p
    # end
    puts "What do you want to search ?"
    input = gets.chomp
    puts "Find out something"
    sleep 1
    a.get(site) do |page|
      search = page.forms.first
      search['q'] = input
      nextp = search.submit
      puts nextp.search(".g").text
    end

    # page = agent.get(site)
    # form = page.forms_with(:class => "t1-form signin").first
    #
    # puts " Im now going to ask for your username/email address"
    # puts ">   "
    # email = gets.chomp
    #
    # puts "I am now going to ask you for your password"
    # puts ">   "
    # password = gets.chomp
    #
    #



    # if form.field_with :id => "signin-email"
    #   form.field_with(:id => "signin-email").value = email
    #   form.field_with(:id => "signin-password").value = password
    #   pagez = form.submit
    #   pagez.links.each do |a|
    #     puts a.to_s
    #   end
    # else
    #   puts "there isnt a page feature id signin-email "
    # end


  end

  def self.files(filename=nil)
    goog = gets.chomp
    if filename == nil
      puts "What file do you want?"
      filename = goog
    end

    puts "Im going to find some of your files now "
    sleep 1
    puts "Im thinking .... "
    sleep 1
    if File.exist?(filename)
      puts "Is this the full path to your file ?"
      File.dirname(filename)
      begin
        open(filename, "r+")
        `cat #{filename}`
      rescue
        puts "I couldnt find your file..."
        puts "Sorry about that"
      end
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
require "mechanize"
require "logger"
require "open-uri"
