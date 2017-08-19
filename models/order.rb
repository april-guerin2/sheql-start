class Order < ActiveRecord::Base
    has_many :ice_cream_flavors
    has_many :mix_ins
    has_many :toppings
    has_many :specials
    enum eating_method: [ :waffle_cone, :waffle_cone_chocolate_dipped, :waffle_bowl, :bowl]
    
end