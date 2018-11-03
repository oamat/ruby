prawn_document() do |pdf|
  pdf.font "Helvetica"
  #pdf.font.size 13

  pdf.text "Hello World"

  20.times do |book|
    pdf.text "Book: book#{book}", :size => 16, :style => :bold, :spacing => 4
    pdf.text "Author: autor#{book}", :spacing => 16
    pdf.text "book.description#{book}"
  end
  pdf.start_new_page

  pdf.text "Last Page"

end
