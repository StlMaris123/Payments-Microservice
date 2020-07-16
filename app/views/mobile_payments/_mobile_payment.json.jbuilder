json.extract! mobile_payment, :id, :amount, :till_number, :reason_for_payment, :created_at, :updated_at
json.url mobile_payment_url(mobile_payment, format: :json)
