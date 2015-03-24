require "prawn"

Prawn::Document.generate("fill_and_stroke.pdf") do
  stroke_axis

  # No block
  line [0, 200], [100, 150]
  stroke
  rectangle [0, 100], 100, 100
  fill

  # With block
  stroke { line [200, 200], [300, 150] }
  fill { rectangle [200, 100], 100, 100 }

  # Method hook
  stroke_line [400, 200], [500, 150]
  fill_rectangle [400, 100], 100, 100
end
