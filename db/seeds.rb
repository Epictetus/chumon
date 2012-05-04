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
