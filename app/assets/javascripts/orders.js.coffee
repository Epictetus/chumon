# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  $('.quantity').change ->
    f = $(this)
    f.parents('tr')
      .find('.total')
      .val((parseInt(f.parents('tr').find('.unit_price').val()) || 0) * (parseInt(f.parents('tr').find('.quantity').val()) || 0))

  $('select.product_id').change ->
    f = $(this)
    if f.val()
      $.ajax
          url:'/products/' + f.val() + '.json'
          type:'GET'
          success: (data, textStatus, jqXHR) ->
            product = data
            f.parents('tr').find('.product_type_number').val(product.type_number)
            f.parents('tr').find('.unit_price').val(product.unit_price)
            f.parents('tr').find('.product_unit').val(product.unit)
            f.parents('tr').find('.total').val((parseInt(product.unit_price) || 0) * (parseInt(f.parents('tr').find('.quantity').val()) || 0))
