class Comment < ApplicationRecord
    validates :name, :description, presence: true
end
