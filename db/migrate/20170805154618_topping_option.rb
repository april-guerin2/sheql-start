class ToppingOption < ActiveRecord::Migration[5.1]
  def change
    create_table :toppins do |t|
      t.string :name
    end
    create_table :toppings do |t|
      t.belongs_to :order
      t.belongs_to :toppin
    end
  end
end
