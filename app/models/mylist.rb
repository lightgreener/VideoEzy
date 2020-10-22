class Mylist < ApplicationRecord
    has_many :movies
    belongs_to :user, :optional => true
end
