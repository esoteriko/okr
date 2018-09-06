class Group < ApplicationRecord
    has_and_belongs_to_many :objectives
    belongs_to :group_type 
end
end
