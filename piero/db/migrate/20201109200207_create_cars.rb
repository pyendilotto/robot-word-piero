class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars, :id => false do |t|
      t.integer "id", primary_key: true
      t.string "model", :limit => 1
      t.string "year", :limit => 4
      t.date "fabrication_date"
      t.float "cost_price"
      t.float "sell_price"
      t.string "state", :limit => 15
      t.string "location", :limit => 10
      t.string "defect", :limit => 15
    end
  end
end
