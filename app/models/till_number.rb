class TillNumber < ApplicationRecord
    validates :doctor_name, :contact_number, presence: true
end
