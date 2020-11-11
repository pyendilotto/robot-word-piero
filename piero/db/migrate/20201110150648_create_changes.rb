class CreateChanges < ActiveRecord::Migration[6.0]
  def change
    create_table :changes, :id => false do |t|
      t.integer "id", primary_key: true
      t.integer "id_order"
    end
  end
end
