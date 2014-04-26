#!/usr/bin/env ruby

class Greeter
  attr_accessor :names
  # create obj
  def initialize(names = "World")
    @names = names
  end
  # say hi
  def say_hi
    if @names.nil?
      out "empty"
    elsif @names.respond_to?("each")
      @names.each do |name|
        out "Hi #{name.capitalize}!"
      end
    else
      out "Hi #{@names}"
    end
  end
  # say bye
  def say_bye
    if @names.nil?
      out "empty"
    elsif @names.respond_to?("join")
      cap = []
      @names.each { |name| cap.push(name.capitalize) }
      out "Sayonara #{cap.join(", ")}!"
    else
      out "Sayonara #{@names}!"
    end
  end
  def out(string)
    puts string
  end
end

mg = Greeter.new
mg.say_hi
mg.say_bye

mg.names = "tony"
mg.say_hi
mg.say_bye

mg.names = ["tony", "claudia", "pancho", "denisse", "fersh"]
mg.say_hi
mg.say_bye

mg.names = nil
mg.say_hi
mg.say_bye