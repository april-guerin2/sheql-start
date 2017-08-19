class Topping < ActiveRecord::Base
    belongs_to :order
    has_many :toppins
    
    validates :order, presence: true 
end