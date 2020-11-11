class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders, :id => false do |t|
      t.integer "id", primary_key: true
      t.integer "id_car"
      t.float "total"
      t.datetime "date"
      t.float "quantity"
    end
  end
end
