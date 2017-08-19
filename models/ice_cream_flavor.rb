class IceCreamFlavor < ActiveRecord::Base
    belongs_to :order
    belongs_to :flavor
    
    validates :order, presence: true 
end