# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



INSTRUCTIONS    _ _ _ __ __ _ _ _

*rails new 'app name'

*Add   gem 'jquery-rails'  to GemFile

*  && Add   group :development, :test do
      gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
      gem 'rspec-rails'
      gem 'launchy'
      gem 'pry'
    end

    group :development do  

    to Gemfile  

* bundle exec rails generate rspec:install (in Terminal)

* Run Rails server in Root dir of project [rails s]

* rake db:create

* rails generate migration [class_name]

* Go into db/migrate/2438403258923095723509[project_name] & Add columns
   EX. t.column(:title, :string) &&  t.timestamps()

*rake db:migrate

*rake db:test:prepare

*create new file in app/models/[class_name].rb and Add
        class [class_name] < ApplicationRecord
        end

* rails g migration create_[class]

* in new migration, set up relationship between Class1 and Class2

* rails g migration add_foreign_key_for_[class2]

* in new migration, set up foreign key relationship between Class1 and Class2

* create a new Model for class in 'app/models/class_name.rb'

* Class2 belongs_to :class1, Class1 has_many :class2

      class Song < ApplicationRecord
        belongs_to :album
      end

      class Album < ApplicationRecord
        has_many :songs
      end

* 
