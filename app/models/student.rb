class Student < ApplicationRecord
    validates :name, :age, :previous_school, presence: true
end
