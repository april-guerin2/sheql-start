class MixInOption < ActiveRecord::Migration[5.1]
  def change
    create_table :mixes do |t|
      t.string :name
      t.boolean :choclate
      t.boolean :nuts
      t.boolean :fruits
      t.boolean :other
    end
    create_table :mixins do |t|
      t.belongs_to :order
      t.belongs_to :mix
    end
  end
end
