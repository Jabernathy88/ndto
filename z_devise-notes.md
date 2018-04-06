
rails new project-name -d prostgresql

gem install 'simple_form'

gem install 'devise' (no omniauth)

update gem file so it says devise 4.0 or better

bundle update

rails g scaffold tournament attributes (no references)

rails g simple_form:install (no bootstrap)

rails g devise User 

rails g migration AddFieldsToUser

rails db:create db:migrate

create custom controller 

rails g devise:views

add custom sign out to layout.erb

add custom log out to application helper?

rails g migration AddReferencesToTournaments

*make sure it all works

import materialize CDN for css and js

add quick images

commit and push and send out to ben!


