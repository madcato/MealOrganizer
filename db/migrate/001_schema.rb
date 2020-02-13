class Schema < ActiveRecord::Migration[6.0]
  def change
    create_table :meals, force: true do |t|
      t.integer :time
      t.text :description
    end
  end
end
