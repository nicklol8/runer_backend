# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
scoreboard = Leaderboard.create()
User.create([{name: "Nick", score: 680, leaderboard_id: 1 },{name: "SprinkleBoy", score: 1000, leaderboard_id: 1}, {name: "Peter", score: 330, leaderboard_id: 1}, {name: "Leo", score: 300, leaderboard_id: 1}, {name: "Charles", score: 80, leaderboard_id: 1}])
