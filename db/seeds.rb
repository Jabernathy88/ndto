# Creating tournament requires user authentication. 
# This seed file should be used after creating 1 user and 2 tournaments manually. 

MatchupPlayer.destroy_all
Matchup.destroy_all
Player.destroy_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

tourn1 = Tournament.find(1)
tourn2 = Tournament.find(2)

# Tournament1, generic 4 player elim
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

# Tournament2, data from 2018 Final Four
loyola = Player.create(
  tournament: tourn2,
  name: "Loyola-Chicago",
  icon_img: 'white'
)
michigan = Player.create(
  tournament: tourn2,
  name: "Michigan",
  icon_img: 'blue'
)
villanova = Player.create(
  tournament: tourn2,
  name: "Villanova",
  icon_img: 'black'
)
kansas = Player.create(
  tournament: tourn2,
  name: "Kansas",
  icon_img: 'red'
)

matchup1a = Matchup.create(
  tournament: tourn2,
  round_number: 1,
)
matchup1b = Matchup.create(
  tournament: tourn2,
  round_number: 1,
)
matchup2a = Matchup.create(
  tournament: tourn2,
  round_number: 2,
)

# Loyola loses to Michigan
loyola_vs_michigan = MatchupPlayer.create(
  player: loyola,
  matchup: matchup1a,
  win_count: 0,
  loss_count: 1,
  draw_count: 0
)
michigan_vs_loyola = MatchupPlayer.create(
  player: michigan,
  matchup: matchup1a,
  win_count: 1,
  loss_count: 0,
  draw_count: 0
)

# Villanova defeats Kansas 
villanova_vs_kansas = MatchupPlayer.create(
  player: villanova,
  matchup: matchup1b,
  win_count: 1,
  loss_count: 0,
  draw_count: 0
)
kansas_vs_villanova = MatchupPlayer.create(
  player: kansas,
  matchup: matchup1b,
  win_count: 0,
  loss_count: 1,
  draw_count: 0
)

# Villanova becomes 2018 champion 
michigan_vs_villanova = MatchupPlayer.create(
  player: team_red,
  matchup: matchup2a,
  win_count: 1,
  loss_count: 0,
  draw_count: 0
)
villanova_vs_michigan = MatchupPlayer.create(
  player: team_black,
  matchup: matchup2a,
  win_count: 0,
  loss_count: 1,
  draw_count: 0
)