class CreateMissings < ActiveRecord::Migration[6.0]
  def change
    create_table :missings, :id => false do |t|
      t.integer "id", primary_key: true
      t.string "model", :limit => 1
    end
  end
end
