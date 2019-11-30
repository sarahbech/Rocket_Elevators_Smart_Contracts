require 'faker'
require 'bcrypt'

namespace :db do
  desc "Drop, create, migrate, seed, and repopulate with sample data"
  task repopulate: [:drop, :create, :migrate, :seed, :fakeit] do
    puts "Done"
  end
end