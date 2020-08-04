class Kitten < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { minimum: 1 }
    validates :age, presence: true
    validates :name, length: { minimum: 1 }

    has_many :kitten_memberships
    has_many :owners, through: :kitten_memberships, source: :owners
end
