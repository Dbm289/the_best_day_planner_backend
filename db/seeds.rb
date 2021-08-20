# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.create(name: 'Monday')
List.create(name: 'Tuesday')
List.create(name: 'Wednesday')
List.create(name: 'Thursday')
List.create(name: 'Friday')
List.create(name: 'Saturday')
List.create(name: 'Sunday')

Event.create(name: "Workout", detail: "work hard", event_start: "2021-08-17 16:42:05", event_end: "2021-08-17 16:55:05", list_id: 1)
Event.create(name: "Workout", detail: "work hard", event_start: "2021-08-18 16:42:05", event_end: "2021-08-18 16:55:05", list_id: 2)
Event.create(name: "Workout", detail: "work hard", event_start: "2021-08-19 16:42:05", event_end: "2021-08-19 16:55:05", list_id: 3)
Event.create(name: "Workout", detail: "work hard", event_start: "2021-08-20 16:42:05", event_end: "2021-08-20 16:55:05", list_id: 4)
Event.create(name: "Workout", detail: "work hard", event_start: "2021-08-21 16:42:05", event_end: "2021-08-21 16:55:05", list_id: 5)
Event.create(name: "Workout", detail: "work hard", event_start: "2021-08-22 16:42:05", event_end: "2021-08-22 16:55:05", list_id: 6)
Event.create(name: "Workout", detail: "work hard", event_start: "2021-08-23 16:42:05", event_end: "2021-08-23 16:55:05", list_id: 7)