require "prawn"

Prawn::Document.generate("adding_pages.pdf") do
  text "We are still on the initial page for this example. Now I'll ask " +
           "Prawn to gently start a new page. Please follow me to the next page."
  start_new_page
  text "See. We've left the previous page behind."
end