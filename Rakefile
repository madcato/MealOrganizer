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
  meals = Meal.where(id: [w.currentWeek...w.currentWeek+7])
  
  for i in 0...6
    puts DAY_NAMES[i]
    puts "-----------"
    puts meals[i].description
    puts ""
  end
  
  # Update week
  w.currentWeek += 1
  w.save
end

desc "Load first articles"
task :load do
  manager = Loader.new
  manager.load('data/articulos_es.md')
end

