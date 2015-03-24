require "prawn"

Prawn::Document.generate("origin.pdf") do
  stroke_axis
  stroke_circle [0, 0], 10
  bounding_box([100, 300], :width => 300, :height => 200) do
    stroke_bounds
    stroke_circle [0, 0], 10
  end
end