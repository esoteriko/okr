class KeyResult < ApplicationRecord
    belongs_to :objectives
    belongs_to :kr_measure
    def to_s
        description
    end  
end
