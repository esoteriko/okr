class Group < ApplicationRecord
    belongs_to :group_type
    has_and_belongs_to_many :objectives

def to_s
   name
end
end
