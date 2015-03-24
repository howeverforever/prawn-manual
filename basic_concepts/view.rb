require "prawn"

class Greeter #包成class
  include Prawn::View

  def initialize(name)
    @name = name
  end

  def say_hello
    text "Hello, #{@name}!"
  end

  def say_goodbye
    font("Courier") do #改字型
      text "Goodbye, #{@name}!"
    end
  end
end

greeter = Greeter.new("G+")

greeter.say_hello
greeter.say_goodbye

greeter.save_as("view.pdf")