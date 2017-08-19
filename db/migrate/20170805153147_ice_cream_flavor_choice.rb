class IceCreamFlavorChoice < ActiveRecord::Migration[5.1]
  def change
    create_table :flavors do |t|
      t.string :name
      t.boolean :dairy
    end
    create_table :icecream do |t|
      t.belongs_to :order
      t.belongs_to :flavor
    end
  end
end