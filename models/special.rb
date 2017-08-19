class Special < ActiveRecord::Base
    belongs_to :order
    belongs_to :special_option
    
end