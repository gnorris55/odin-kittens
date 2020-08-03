class Kitten < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { minimum: 1 }
    validates :age, presence: true
    validates :name, length: { minimum: 1 }
    belongs_to :owner
end
