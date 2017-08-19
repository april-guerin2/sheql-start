class CreateOrder < ActiveRecord::Migration[5.1]
  def change
    create_table :special_options do |t|
      t.string :name
      t.string :description
    end
    create_table :specials do |t|
      t.belongs_to :order
      t.belongs_to :special_option
    end
    create_table :orders do |t|
      t.integer :scoops
      t.string :eating_method
      t.belongs_to :special
    end
  end
end
