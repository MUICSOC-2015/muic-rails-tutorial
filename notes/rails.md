    rails new ImageHub
    bundle install
    rails s
    rails c

    rails generate scaffold User first_name:text last_name:text age:integer

    # don't run this. rails g scaffold Album name:text user_id:integer:index

    rails g scaffold Album name:text user:references
    rails g scaffold Image name:text album:references


    rake db:migrate

## info

getbootstrap.com
