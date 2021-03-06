# NDTO: Indie Tournament Organizer

Deployed here: [NDTO at Heroku](https://ndto.herokuapp.com)

I am rebuilding the rails app I attempted last month, but this time with better planning and technique. Elevator pitch:

* _NDTO is a Magic the Gathering tournament tracker app for local unsanctioned game events._

The app’s name is pronounced “indie T.O.” 

Magic players often say T.O. as shorthand for “tournament organizer” to refer to a store owner — the person responsible for setting entry fees, paying out prizes, recruiting judges, and ensuring good atmosphere and customer service during the event.

_[Documentation for previous version](https://github.com/Jabernathy88/capstone-jeremy-dev)._

_See also pretty version of this [Readme on Medium.com](https://medium.com/@ghostmap/outline-for-revamped-ndto-3a2a0d35feab)._


# JUNE 21st UPDATE

![Final Four data](./readme_assets/2018_champion_snap.png)

**Above:** Villanova was the 2018 Final Four college basketball champion. 

Snapshot comes from Rails Console, showing many-to-many relationship between Players and the join table, MatchupPlayers. [Click here for a closer look.](./readme_assets/2018_champion_snap.png)

## ERD & data attributes

Notes inspired by a meeting on 04/03/18.

### Diagram

![Diagram](./readme_assets/erd_04-03-18.png)

Users have Tournaments have many Players and Matchups. Players have Matchups through a join.

### Models

Five entities including one join table.

**Users**
* (authentication with Devise gem)
* username: string
* email: string
* password: string
* icon_img: string
* has many Tournaments
* Tournaments
* user_id: integer
* name: string
* belongs to User
* has many Players
* has many Matchups

**Players**
* tournament_id: integer
* name: string
* icon_img: string
* belongs to Tournament
* has many Matchups through MatchupPlayers

**Matchups**
* tournament_id: integer
* round_number: integer
* winner_id: integer
* icon_img: string
* belongs to Tournament
* has many Players through MatchupPlayers

**MatchupPlayers**
* (join table)
* player_id: integer
* matchup_id: integer
* win_count: integer
* draw_count: integer
* loss_count: integer
* belongs to Matchup
* belongs to Player

## Sprint 1 Actions:

1. implement Devise (install gem, run devise generator for your User object, migrate additional attributes to Users)

2. scaffold Tournament object, associate to Users, and allow Users to create Tournaments (don’t let Users access a Tournament unless they are the owner)

3. rails g model Players, associate to Tournaments, let Tournaments `accept_nested_attributes_for :tournaments`, update Tournament form to include spots for Player names (with this, installing `gem ‘simple-form’` will make your life a *lot* easier) 

4. evaluate your app to see if anything else is needed on the above features; if not, proceed to planning methods to generate the first round

## Research

Resources for planning match-making math:

* Tie-breakers article on GatheringMagic.com

* Official calculations at Wizards of the Coast

* Example app at Challonge.com (seems built with React on Rails)

* Example app in pure JavaScript 

## User Stories: Single-Elimination

Stories written from user’s perspective.

See link to new Trello Board.

More TBD

Much love,

JER