class Topping < ActiveRecord::Base
    belongs_to :order
    belongs_to :toppin
    
    validates :order, presence: true 
end