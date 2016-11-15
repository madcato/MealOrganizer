class CurrentWeek < ActiveRecord::Migration
  def change
    create_table :weeks, force: true do |t|
      t.integer :currentWeek
      t.timestamps
    end
  end
end
