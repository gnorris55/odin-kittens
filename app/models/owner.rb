class Owner < ApplicationRecord
    has_many :kitten_memberships
    has_many :kittens, through: :kitten_memberships
end
