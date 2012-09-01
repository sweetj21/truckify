# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'

Driver.create([
	{ first_name: "Alexander", last_name: "Profeit", unit_id: 1 },
	{ first_name: "Chris", last_name: "Wilson", unit_id: 2 },
	{ first_name: "Eric", last_name: "Millington", unit_id: 2 }
])

TripReport.create([
	{	driver_id: 1,
		trip_start_date: "2012-09-01",
		trip_end_date: "2012-09-03",
		trip_started_at: "Ottawa",
		trip_ended_at: "Ottawa",
		most_distant_city: "Montreal",
		odometer_start: 1000,
		odometer_end: 1200 },
	{	driver_id: 2,
		trip_start_date: "2012-07-01",
		trip_end_date: "2012-07-09",
		trip_started_at: "Ottawa",
		trip_ended_at: "Montreal",
		most_distant_city: "Toronto",
		odometer_start: 5000,
		odometer_end: 6000 },
	{	driver_id: 2,
		trip_start_date: "2012-08-13",
		trip_end_date: "2012-08-15",
		trip_started_at: "Toronto",
		trip_ended_at: "Ottawa",
		most_distant_city: "Montreal",
		odometer_start: 3000,
		odometer_end: 3500 },
	{	driver_id: 1,
		trip_start_date: "2012-09-01",
		trip_end_date: "2012-10-03",
		trip_started_at: "Toronto",
		trip_ended_at: "Toronto",
		most_distant_city: "Montreal",
		odometer_start: 9000,
		odometer_end: 10000 },
	{	driver_id: 3,
		trip_start_date: "2012-05-01",
		trip_end_date: "2012-05-03",
		trip_started_at: "Toronto",
		trip_ended_at: "Toronto",
		most_distant_city: "Montreal",
		odometer_start: 1000,
		odometer_end: 1200 },
])

