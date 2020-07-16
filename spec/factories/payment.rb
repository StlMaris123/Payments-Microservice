FactoryBot.define do
    factory :payment do
      title { 'fist payment'}
      user_id { 1 }
      start_date { Date.todate}
      end_date
      doctor_name
    end
  
  
    factory :invalid_payment, class: Payment do |f|
      f.name ''
      f.street_address ''
      f.city ''
      f.telephone ''
      # association :state, name: nil
    end
  end