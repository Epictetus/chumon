# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

  $('#add_role').click ->
    accounts_role_selects = $('#accounts_roles').find('select')
    accounts_roles = $('#accounts_roles')

    n = parseInt(accounts_roles.attr('num')) || 0

    role_select = $('<select>')
      .attr('id', 'account_accounts_roles_attributes_' + n + '_role_id')
      .attr('name', 'account[accounts_roles_attributes][' + n + '][role_id]')

    for i in [{}].concat(roles())
      role_select.append($('<option>').attr('value', i.id).text(i.name))

    accounts_roles.append(role_select).append($('<br>'))
    accounts_roles.attr('num', n + 1)

  $('#account_submit').click ->
    for i in $('#accounts_roles').find('select')
      $(i).remove() if $(i).val() == ''

  $('#accounts_roles select').live 'change', ->
    $(this).parents('.accounts_role_field')
      .find('input[type=hidden]._destroy').val(if $(this).val() == '' then '1' else '')
