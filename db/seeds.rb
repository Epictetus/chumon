# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
 Role::RoleCustomer,
 Role::ProductManager,
 Role::AccountManager,
 Role::DeliveryOperator,
 Role::Administrator,
].each do |klass|
  if klass.count.zero?
    klass.create
  end
end

[
 { login:'chumon', password:'chumon'}
].each do |attrs|
  if !Account.authenticate(attrs[:login], attrs[:password])
    Account.create(login:attrs[:login], password:attrs[:password])
  end
end

if Product.count.zero?
  [
   { name:'製品1', type_number:'MICFIQ-01121-K-923', unit:'式', unit_price:'120000'},
   { name:'パッケージ1', type_number:'PKG-O-923', unit:'本', unit_price:'90000'},
   { name:'AHOPOSシステム', type_number:'POS-A-1022', unit:'式', unit_price:'230000'},
  ].each do |attrs|
    Product.create(attrs)
  end
end
