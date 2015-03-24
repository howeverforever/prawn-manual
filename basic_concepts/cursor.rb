require "prawn"

Prawn::Document.generate("cursor.pdf") do
  stroke_axis

  text "the cursor is here: #{cursor}"
  text "now it is here: #{cursor}"

  move_down 200
  text "on the first move the cursor went down to: #{cursor}"

  move_up 100
  text "on the second move the cursor went up to: #{cursor}"

  move_cursor_to 50
  text "on the last move the cursor went directly to: #{cursor}"
end