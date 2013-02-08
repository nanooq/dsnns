# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Iac.delete_all
Iac.create(identity_type: 'browserid', identity: 'standard@nanooq.org', address: 'https://www.nanooq.org/blog', status: 'pending')
