require 'active_record'
require 'sqlite3'
require 'logger'

ActiveRecord::Base.logger = Logger.new('log/debug.log')
configuration = YAML::load(IO.read('config/database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])

class Meal < ActiveRecord::Base
  # Time of the DAY
  @@time_of_day = {breakfast: 1, brunch: 2, lunch: 3, snack: 4, dinner: 5}
end

class Week < ActiveRecord::Base
end