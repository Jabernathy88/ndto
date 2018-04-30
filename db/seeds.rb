# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MatchupPlayer.destroy_all
Matchup.destroy_all
Player.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

tourn1 = Tournament.find(1)
tourn2 = Tournament.find(2) 

team_black = Player.create(
  tournament: tourn1,
  name: "Team Black",
  icon_img: 'black'
)
team_blue = Player.create(
  tournament: tourn1,
  name: "Team Blue",
  icon_img: 'blue'
)
team_orange = Player.create(
  tournament: tourn1,
  name: "Team Green",
  icon_img: 'green'
)
team_red = Player.create(
  tournament: tourn1,
  name: "Team Red",
  icon_img: 'red'
)

