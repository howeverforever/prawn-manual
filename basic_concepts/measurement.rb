require "prawn"
require "prawn/measurement_extensions"

Prawn::Document.generate("measurement.pdf") do
  [:mm, :cm, :dm, :m, :in, :yd, :ft].each do |measurement|
    text "1 #{measurement} in PDF points: #{1.send(measurement)} pt"
    move_down 5.mm
  end
end