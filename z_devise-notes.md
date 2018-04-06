

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

xx

create custom controller, per 
https://jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html

git add, commit, push 

rails g devise:views

add custom sign out to layout.erb

add custom log out to application helper?

rails g migration AddReferencesToTournaments

*make sure it all works

import materialize CDN for css and js

add quick images

commit and push and send out to ben!

  ---

class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end

  --- 
seed pass = moogoo 