# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  total = () ->
    n = 0
    for i in $('.subtotal')
      n += parseInt($(i).val()) || 0
    $('.total').val(n)

  $('select.product_id').live 'change', () ->
    f = $(@)
    if f.val()
      $.ajax
          url:'/products/' + f.val() + '.json'
          type:'GET'
          success: (data, textStatus, jqXHR) ->
            product = data
            f.parents('tr').find('.product_name').val(product.name)
            f.parents('tr').find('.product_type_number').val(product.type_number)
            f.parents('tr').find('.unit_price').val(product.unit_price)
            f.parents('tr').find('.quantity').val('')
            f.parents('tr').find('.product_unit').val(product.unit)
            f.parents('tr').find('.subtotal').val((parseInt(product.unit_price) || 0) * (parseInt(f.parents('tr').find('.quantity').val()) || 0))
    else
      f.parents('tr').find('.product_name').val('')
      f.parents('tr').find('.product_type_number').val('')
      f.parents('tr').find('.unit_price').val('')
      f.parents('tr').find('.quantity').val('')
      f.parents('tr').find('.product_unit').val('')
      f.parents('tr').find('.subtotal').val('')
    total()

  $('.quantity').live 'change', () ->
    f = $(@)
    f.parents('tr')
      .find('.subtotal')
      .val((parseInt(f.parents('tr').find('.unit_price').val()) || 0) * (parseInt(f.parents('tr').find('.quantity').val()) || 0))
    total()

  product_text_field = () ->
    $('<input>')
      .attr('type', 'text')

  $('#add_order').click ->
    n = $('#order_details').select('tbody').find('tr').size()

    product_select = $('<select>')
      .attr('id', 'order_order_details_attributes_' + n + '_product_id')
      .attr('name', 'order[order_details_attributes][' + n + '][product_id]')
      .addClass('product_id')

    for product in [{}].concat(products())
      product_select.append($('<option>').attr('value', product.id).text(product.name))

    $('#order_details')
      .append($('<tr>')
        .append($('<td>')
          .append($('<input>').attr('type', 'hidden')
            .attr('id', 'order_order_details_attributes_' + n + '_product_name'))
            .attr('name', 'order[order_details_attributes][' + n + '][product_name]')
          .append(product_select))

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
            .addClass('subtotal'))))

    return false

  $('#submit_order_at').click ->
    d = new Date()
    $('input#order_ordered_at').val(d.getFullYear() + '-' + (d.getMonth() + 1) + '-' + d.getDate() + ' ' + d.getHours() + ':' + d.getMinutes() + ':' + d.getSeconds())
