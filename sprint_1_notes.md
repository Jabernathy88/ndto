SPRINT 1.1 (end asap, but budget time for learning custom Devise)

rails new project-name -d prostgresql

gem install 'simple_form'

gem install 'devise' (no omniauth)

bundle update

rails g scaffold tournament attributes (no references)

git add, commit, push 

rails g simple_form:install (no bootstrap)

rails g devise:install

rails g devise User 

rails g migration AddFieldsToUser username icon_img

config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

root "tournaments#index"

<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>

git add, commit, push 

rails db:create db:migrate

add persistent sign out to layout.erb

create custom controller, per:
https://jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html

update config/routes to:
devise_for :users, :controllers => { registrations: 'users/registrations' }

git add, commit, push 

rails g devise:views

add new form fields for custom user attributes
in: registration/new registration/edit

SPRINT 1.2 (end 2:45 Friday)

# add custom logout to routes:
# ```devise_scope :user do
#    post 'users/new-registration' => 'users/registrations#create'
#    post 'users/new-session' => 'users/sessions#create'
# end``` # later

rails g migration AddUserToTournaments user:references

rails g model Player name icon_img tournament:references

rails g model Matchups round_number:integer winner_id:integer tournament:references

rails g model MatchupPlayers win_count:integer loss_count:integer draw_count:integer matchup:references player:references

conform all relations with belongs_to, has_many

git add, commit, push

** END OF SPRINT for now

SPRINT 1.3 (end 3:15 Friday)

Story: (don’t let Users access a Tournament unless they are the owner)

Story: let Tournaments `accept_nested_attributes_for :tournaments`, update Tournament form to include spots for Player names

try crud by, example:
rails g scaffold_controller User name email

SPRINT 1.4 (end 4:00 Friday)

import materialize CDN for css and js

add quick images

commit and push and send out to ben!

* new planning