require "prawn"

Prawn::Document.generate("other_cursor_helpers.pdf") do
  stroke_horizontal_rule
  pad(20) {text "Text padded both before and after."}

  stroke_horizontal_rule
  pad_top(20) {text "Text padded on the top."}

  stroke_horizontal_rule
  pad_bottom(40) {text "Text padded on the bottom."}

  stroke_horizontal_rule
  move_down 30

  text "Text written before the float block."

  float do
    move_down 30
    bounding_box([0, cursor], :width => 200) do
      text "Text written inside the float block."
      stroke_bounds
    end
  end
  text "Text written after and float block."
end