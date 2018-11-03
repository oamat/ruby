paintIt = (element, backgroundColor, textColor) ->
  element.style.backgroundColor = backgroundColor
  if textColor?
    element.style.color = textColor

$ ->
  $("a[data-background-color]").click (e) ->
    e.preventDefault()

    backgroundColor = $(this).data("background-color")
    textColor = $(this).data("text-color")
    paintIt(this, backgroundColor, textColor)




#$(document).ready ->
#  $("#new_article").on("ajax:success", (e, data, status, xhr) ->
#    $('#products').append xhr.responseText
#  ).on "ajax:error", (e, xhr, status, error) ->
#    $("#new_article").append "<p>ERROR</p>"


#$(document).ready ->
#  $("#list_article").on("ajax:success", (e, data, status, xhr) ->
#    $('#products').html xhr.responseText
#  ).on "ajax:error", (e, xhr, status, error) ->
#    $("#list_article").append "<p>ERROR</p>"


#Botones header derechos (Settings)
$(document).ready ->
  $("#myNavTab a").click (e) ->
    e.preventDefault()
    $(this).tab "show"

#Botones header centrales (Ventas, compras)
$(document).ready ->
  $("#myNavJustified a").click (e) ->
    e.preventDefault()
    $(this).tab "show"

#Pestañas finales (Pedido, Factura, ...)
$(document).ready ->
  $("#myTab a").click (e) ->
    e.preventDefault()
    $(this).tab "show"


#Lineas factura, cerramos ventana Modal.
#$(document).ready ->
 #  $("#myForm").submit ->
       #Validaciones
       #alert document.getElementById("myAlert").innerHTML
       #alert document.getElementById("myAlert").innerHTML.length
       #if document.getElementById("myAlert").innerHTML.length ==4
  #           $("#myModal").modal("hide")