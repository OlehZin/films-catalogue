class Film < ApplicationRecord
    has_many :reviews, as: :reviewable
end
