# Creating tournament requires user authentication. 
# This seed file should be used after creating 1 user and 2 tournaments manually. 

MatchupPlayer.destroy_all
Matchup.destroy_all
Player.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

tourn1 = Tournament.find(1)
# tourn2 = Tournament.find(2)

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
team_green = Player.create(
  tournament: tourn1,
  name: "Team Green",
  icon_img: 'green'
)
team_red = Player.create(
  tournament: tourn1,
  name: "Team Red",
  icon_img: 'red'
)

matchup1a = Matchup.create(
  tournament: tourn1,
  round_number: 1,
)
matchup1b = Matchup.create(
  tournament: tourn1,
  round_number: 1,
)
matchup2a = Matchup.create(
  tournament: tourn1,
  round_number: 2,
)

# Team Black wins Matchup1a
join_black_blue = MatchupPlayer.create(
  player: team_black,
  matchup: matchup1a,
  win_count: 1,
  loss_count: 0,
  draw_count: 0
)
join_blue_black = MatchupPlayer.create(
  player: team_blue,
  matchup: matchup1a,
  win_count: 0,
  loss_count: 1,
  draw_count: 0
)

# Team Red wins Matchup1b 
join_red_green = MatchupPlayer.create(
  player: team_red,
  matchup: matchup1b,
  win_count: 1,
  loss_count: 0,
  draw_count: 0
)
join_green_red = MatchupPlayer.create(
  player: team_green,
  matchup: matchup1b,
  win_count: 0,
  loss_count: 1,
  draw_count: 0
)

# Team Red wins Matchup2a (finals)
join_red_black = MatchupPlayer.create(
  player: team_red,
  matchup: matchup2a,
  win_count: 1,
  loss_count: 0,
  draw_count: 0
)
join_black_red = MatchupPlayer.create(
  player: team_black,
  matchup: matchup2a,
  win_count: 0,
  loss_count: 1,
  draw_count: 0
)