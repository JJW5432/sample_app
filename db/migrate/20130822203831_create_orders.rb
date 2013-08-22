class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :bunk
      t.integer :white
      t.integer :blue
      t.integer :orange
      t.string :alternate
      t.integer :paid

      t.timestamps
    end
  end
end
