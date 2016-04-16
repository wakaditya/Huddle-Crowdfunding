# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
=begin
Perk.create(amount: 3000, p_type: 3)
Perk.create(amount: 1500, p_type: 1)
Perk.create(amount: 300, p_type: 2)
Perk.create(amount: 200, p_type: 4)
=end
5.times do |i|
    User.create(address:"location#{i}",name:"User#{i}", email:"student#{i}.namei@ves.ac.in",contact:"90043355#{i}", password: User.digest("user#{i}") )
end
=begin
Event.using(:mumbai_shard).create!(name:'Octaves',tag: 'Music', collection: 35000, funding_deadline: '2016-08-3', event_date: '2016-07-04', rating: 10, location:'Mumbai', ticket: "Offline - On day")
#Random Test Data
Event.using(:mumbai_shard).create(   name: "Praxis",
                tag: "College Techfest",
                collection: "0",
                funding_deadline: "2009-08-03T12:15:29.792Z",
                event_date: "02/9/2016",
                rating: 8,
                location: "VESIT",
                ticket:"Offline - 2 days",
                )
Event.create(
                name: "RubyConf India",
                tag: "Tech Conference",
                collection: "290000",
                funding_deadline: "2012-12-13T20:39:46.466Z",
                event_date: "09/03/2016",
                rating: 9,
                location: "Kochi, India",
                ticket:"Offline - 5 days"
                )
Event.using(:mumbai_shard).create(
                name: "Amazon Cloud Computing Conference",
                tag: "Web Services Conference",
                collection: "900000",
                funding_deadline: "2017-1-20T18:14:00.959Z",
                event_date: "26/07/2017",
                rating: 10,
                location: "Mumbai, India",
                ticket:"Offline - 3 days"
                )
Event.create(
                name: "PyCon India",
                tag:"Tech Conference",
                collection: "400000",
                funding_deadline: "2016-03-14T20:22:41.912Z",
                event_date: "22/08/2016",
                rating: 8,
                location: "Bangalore, India",
                ticket: "Online & Offline - 2 days"
                )
Event.create(
                name: "Kuvalis",
                tag:"dance",
                collection: "30000",
                funding_deadline: "1980-02-02T18:43:49.301Z",
                event_date: "06/08/2001",
                rating: 6,
                location: "North Paulineburgh",
                ticket:"Offline - 2 days"
                )
                
Event.create(
                  name: "SXSW",
                  tag: "ISO 14001",
                  collection: "$5411.76",
                  funding_deadline: "2015-08-11",
                  event_date: "2015-06-13",
                  rating: 3,
                  location: "Vera",
                  ticket: "Seldom"
                )
Event.create(
                  name: "Troll Wars",
                  tag: "CTFL",
                  collection: "$9889.80",
                  funding_deadline: "2016-01-07",
                  event_date: "2015-10-02",
                  rating: 10,
                  location: "Ronald Regan",
                  ticket: "Seldom"
                )
Event.create(
                  name: "HelloJava",
                  tag: "PowerPoint",
                  collection: "$9826.41",
                  funding_deadline: "2015-05-10",
                  event_date: "2015-09-19",
                  rating: 5,
                  location: "Lighthouse Bay",
                  ticket: "Never"
                )
Event.create(
                  name: "Jade Fights",
                  tag: "FMV",
                  collection: "$7023.48",
                  funding_deadline: "2015-07-02",
                  event_date: "2016-02-21",
                  rating: 3,
                  location: "Bluestem",
                  ticket: "Never"
                )
Event.create(
                  name: "Tagopia",
                  tag: "Axys",
                  collection: "$5659.08",
                  funding_deadline: "2015-07-28",
                  event_date: "2016-02-09",
                  rating: 8,
                  location: "Grover",
                  ticket: "Never"
                )
=end