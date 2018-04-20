START PART 1 

  -----------  -----------

gem 'simple_form'

gem 'devise'

bundle

bundle update

rails g scaffold Tournament attributes (no references)

rails g simple_form:install --foundation

rails g devise:install

config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

root "tournaments#index"

<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>

  -----------  -----------  -----------

rails g devise User 

rails g migration AddFieldsToUsers username icon_img

rails db:create db:migrate

```
<div id="user_nav">
  <% if user_signed_in? %>
    Signed in as <%= current_user.email %>. Not you?
    <%= link_to "Sign out", destroy_user_session_path, :method => :delete %>
  <% else %>
    <%= link_to "Sign up", new_user_registration_path %> or <%= link_to "sign in", new_user_session_path %>
  <% end %>
</div>
```

```
<%= stylesheet_link_tag    'https://cdn.jsdelivr.net/foundation/6.2.4/foundation.min.css', 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
```

```
<%= javascript_include_tag 'https://cdn.jsdelivr.net/foundation/6.2.4/foundation.min.js', 'application', 'data-turbolinks-track': 'reload' %>
```

```
class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end
```

devise_for :users, :controllers => { registrations: 'registrations' }

git add commit push

rails g devise:views


```
<%= f.input :username, required: true, autofocus: true %>
<%= f.input :email, required: true %>
...
<%= f.input :icon_img, collection: ['white', 'blue', 'black', 'green', 'red'], required: true %>

```

  -----------  -----------

START PART 2

rails g migration AddUserRefToTournaments user:references

```
before_action :authenticate_user!, except: [:show]
```

rails g model Player name icon_img tournament:references

rails g model Matchups round_number:integer winner_id:integer tournament:references

rails g model MatchupPlayers win_count:integer loss_count:integer draw_count:integer matchup:references player:references

conform all relations with belongs_to, has_many
