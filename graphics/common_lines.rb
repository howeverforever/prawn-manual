require 'prawn'

class Common_lines
  include Prawn::View

  def initialize()
    stroke_axis

    stroke_color 'ff0000'

    stroke do
      #just lower the current y position
      move_down 50
      horizontal_rule

      vertical_line 100, 300, :at => 50
      horizontal_line 200, 500, :at => 150
    end
  end
end

pdf = Common_lines.new()
pdf.save_as("common_lines.pdf")