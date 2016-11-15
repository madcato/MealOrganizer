class Schema < ActiveRecord::Migration
  def change
    create_table :meals, force: true do |t|
      t.integer :time
      t.text :description
    end
  end
end


