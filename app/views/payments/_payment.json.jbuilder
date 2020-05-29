json.extract! payment, :id, :user_id, :productName, :from_bank_account, :from_account_name, :from_account_number, :from_bank_code, :from_currency, :amount, :description, :to_bank_account, :to_account_number, :to_account_name, :to_bank_code, :to_currency_code, :created_at, :updated_at
json.url payment_url(payment, format: :json)
