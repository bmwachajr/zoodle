json.extract! customer, :id, :firstname, :lastname, :gender, :email, :date-of-birth, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
