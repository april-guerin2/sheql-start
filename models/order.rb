class Order < ActiveRecord::Base
    has_many :ice_cream_flavors
    has_many :mix_ins
    has_many :toppings
    has_many :specials
    enum eating_method: [ :"Waffle Cone", :"Waffle Cone-Choclate Dipped", :"Waffle Bowl", :"Bowl"]
    
end