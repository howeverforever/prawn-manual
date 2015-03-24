require 'prawn'

class Lines_and_curves
  include Prawn::View

  def initialize()
    stroke_axis

    #line_to and curve_to
    stroke do
      move_to 0, 0

      line_to 100, 100
      line_to 0, 100
      curve_to [150, 250], :bounds => [[20, 200], [120, 200]]
      curve_to [200, 0], :bounds => [[150, 200], [450, 10]]
    end

    # line and curve
    stroke do
      line [300, 200], [400, 50]
      curve [500, 0], [400, 200], :bounds => [[600, 300], [300, 390]]
    end
  end
end

pdf = Lines_and_curves.new()
pdf.save_as("lines_and_curves.pdf")