# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('.product .add_to_cart').on 'click', ->
    $.post '/orders/add_product', product_id: $(this).closest('.product').data('product_id')
    $(this).text("В корзине").addClass('success')
    console.log $(this)