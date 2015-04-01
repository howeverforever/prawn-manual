require 'prawn'

class Rectangle
  include Prawn::View

  def initialize()
    stroke_axis

    stroke do
      rectangle [100, 300], 100, 200

      rounded_rectangle [300, 300], 100, 200, 20
    end
  end
end

pdf = Rectangle.new()
pdf.save_as("rectangle.pdf")