class Movie < ApplicationRecord
    belongs_to :director, :optional => true
    belongs_to :mylist, :optional => true
end
