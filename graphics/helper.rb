require "prawn"

#Draw various axis.
Prawn::Document.generate("helper.pdf") do
  stroke_axis
  stroke_axis(:at => [70, 70], :height => 200, :step_length => 50, :negative_axes_length => 5, :color => '0000FF')
  print(cursor.to_i)
  stroke_axis(:at => [140, 140], :height => cursor.to_i - 140, :step_length => 20, :negative_axes_length => 40, :color => 'FF00')
end