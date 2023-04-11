class Tour < ApplicationRecord
    validates :image, :title,:city,:distance,:price,:maxGroupSize,:description,:rating,:featured, presence: true

    pg_search_scope :search_by_title_and_city,
    against: %i[title  city price maxGroupSize featured],
    using: {
        tsearch: {
            prefix: true
        }
    }



end
