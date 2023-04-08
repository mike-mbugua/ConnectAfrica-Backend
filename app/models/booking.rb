class Booking < ApplicationRecord
    validates :fullName, :phone,:date,:guests,:total, presence: true
end
