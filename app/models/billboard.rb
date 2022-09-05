class Billboard < ActiveRecord::Base
    belongs_to :contractor
    belongs to :location, through: :contractor
end