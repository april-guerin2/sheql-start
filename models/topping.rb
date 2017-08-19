class Topping < ActiveRecord::Base
    belongs_to :order
    belongs_to :toppins
    
    validates :order, presence: true 
end