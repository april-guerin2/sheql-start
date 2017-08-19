class MixIn < ActiveRecord::Base
    belongs_to :order
    belongs_to :mix
    
    validates :order, presence: true 
end