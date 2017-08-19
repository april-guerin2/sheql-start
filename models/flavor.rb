class Flavor < ActiveRecord::Base
    has_many :ice_cream_flavors
end