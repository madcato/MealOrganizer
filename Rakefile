require './app'

DAY_NAMES = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]

task :default => :migrate

desc "Run migrations"
task :migrate do
  ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end

task :next do
  w = Week.first
  if w == nil
    w = Week.new
    w.currentWeek = 0
    w.save
  end
  
  # Show current week meals
  cw = w.currentWeek * 7
  meals = Meal.where(id: [cw...(cw+8)])
  p meals.count
  for i in 0...7
    puts DAY_NAMES[i]
    puts ""
    puts meals[i].description
    puts ""
  end
  
  # Update week
  w.currentWeek += 1
  if w.currentWeek >= 11
    w.currentWeek = 0
  end
  w.save
end
