class CreateDeffects < ActiveRecord::Migration[6.0]
  def change
    create_table :cars, :id => false do |t|
      t.integer "id", primary_key: true
      t.integer "id_car"
    end
  end
end
