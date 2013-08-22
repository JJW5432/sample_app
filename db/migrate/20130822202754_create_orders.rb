class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :bunk
      t.integer :white
      t.integer :orange
      t.integer :blue
      t.Boolean :paid
      t.string :alternate

      t.timestamps
    end
  end
end
