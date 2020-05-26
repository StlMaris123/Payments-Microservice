json.extract! payment, :id, :user_id, :token, :charge_id, :error_message, :payment_gateway, :amount, :paypal_plan_name, :description, :created_at, :updated_at
json.url payment_url(payment, format: :json)
