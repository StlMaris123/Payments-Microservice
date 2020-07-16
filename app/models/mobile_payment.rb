class MobilePayment < ApplicationRecord
    validates :amount, presence: true
end
