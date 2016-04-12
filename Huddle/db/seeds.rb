# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Perk.create(amount: 3000, p_type: 3)
Perk.create(amount: 1500, p_type: 1)
Perk.create(amount: 300, p_type: 2)
Perk.create(amount: 200, p_type: 4)
User.create(name:'Kinjal',address:'BARC',email:'kinjal.chavda@ves.ac.in',contact:'9004335522', password: User.digest('kinjal') )
User.create(name:'Ishaan',address:'Powai',email:'ishaan.malhi@ves.ac.in',contact:'9004335524', password: User.digest('ishaan') )
User.create(name:'Aditya',address:'Seawoods',email:'aditya.wakade@ves.ac.in',contact:'9004335523', password: User.digest('aditya') )
Event.create(name:'Octaves',tag: 'Music', collection: 35000, funding_deadline: '2016-08-3', event_date: '2016-07-04', rating: 10, location:'Chembur', ticket: "Offline - On day")