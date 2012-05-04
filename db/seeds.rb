# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


[
 { name:'製品1', type_number:'MICFIQ-01121-K-923', unit:'式', unit_price:'120000'},
 { name:'パッケージ1', type_number:'PKG-O-923', unit:'本', unit_price:'90000'},
 { name:'AHOPOSシステム', type_number:'POS-A-1022', unit:'式', unit_price:'230000'},
].each { |attrs|
  Product.create(attrs)
} if Product.count.zero?

[
 Role::RoleCustomer,
 Role::ProductManager,
 Role::AccountManager,
 Role::DeliveryOperator,
 Role::Administrator,
].each { |klass|
  klass.create if klass.count.zero?
}

[
 {
   login:'test',
   password:'test',
   customer:Customer.new(customer_name:'テスト商事',
                         company_name:'テスト商事',
                         location:'テスト県テスト市',
                         zip_code:'a92-32cd',
                         phone:'0a8-bcdf-ffef',
                         fax:'fef-003-298c')
 },
 {
   login:'chumon',
   password:'chumon'
 },
].each { |attrs|
  Account.create(attrs) if !Account.authenticate(attrs[:login], attrs[:password])
}
