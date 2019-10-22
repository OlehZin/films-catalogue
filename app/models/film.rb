class Film < ApplicationRecord
    
    has_many :reviews, as: :reviewable

    validates :title, :genre, :plot, presence: :true
    #validates :metascore, numersicality: { only_integer: true }

end
