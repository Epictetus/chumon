# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  $('select.product_id').live 'change', () ->
    f = $(@)
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

  $('.quantity').live 'change', () ->
    f = $(@)
    f.parents('tr')
      .find('.total')
      .val((parseInt(f.parents('tr').find('.unit_price').val()) || 0) * (parseInt(f.parents('tr').find('.quantity').val()) || 0))

  product_text_field = () ->
    $('<input>')
      .attr('type', 'text')

  $('#add_button').click ->
    n = $('#order_details').select('tbody').find('tr').size()

    product_select = $('<select>')
      .attr('id', 'order_order_details_attributes_' + n + '_product_id')
      .attr('name', 'order[order_details_attributes][' + n + '][product_id]')
      .addClass('product_id')


    for product in [{}].concat(products())
      product_select.append($('<option>').attr('value', product.id).text(product.name))

    $('#order_details')
      .append($('<tr>')
        .append($('<td>').append(product_select))

        .append($('<td>').append(product_text_field()
            .attr('id', 'order_order_details_attributes_' + n + '_product_type_number')
            .attr('name', 'order[order_details_attributes][' + n + '][product_type_number]')
            .attr('readonly', 'readonly')
            .addClass('product_type_number')))

        .append($('<td>').append(product_text_field()
            .attr('id', 'order_order_details_attributes_' + n + '_unit_price')
            .attr('name', 'order[order_details_attributes][' + n + '][unit_price]')
            .attr('readonly', 'readonly')
            .addClass('unit_price')))

        .append($('<td>').append(product_text_field()
            .attr('id', 'order_order_details_attributes_' + n + '_quantity')
            .attr('name', 'order[order_details_attributes][' + n + '][quantity]')
            .addClass('quantity')))

        .append($('<td>').append(product_text_field()
            .attr('id', 'order_order_details_attributes_' + n + '_product_unit')
            .attr('name', 'order[order_details_attributes][' + n + '][product_unit]')
            .attr('readonly', 'readonly')
            .addClass('product_unit')))

        .append($('<td>').append(product_text_field()
            .addClass('total'))))

    return false
