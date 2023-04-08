class Tour < ApplicationRecord
    validates :image, :title,:city,:distance,:price,:maxGroupSize,:description,:rating,:featured, presence: true
end
