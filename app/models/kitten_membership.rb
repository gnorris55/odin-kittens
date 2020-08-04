class KittenMembership < ApplicationRecord
    belongs_to :kitten, class_name: "Kitten"
    belongs_to :owner, class_name: "Owner"
end
