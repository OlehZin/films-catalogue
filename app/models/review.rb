class Review < ApplicationRecord
    
    belongs_to :user
    belongs_to :reviewable, polymorphic: true
    
    has_rich_text :content
end
