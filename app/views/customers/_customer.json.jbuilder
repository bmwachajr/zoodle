json.extract! customer, :id, :firstname, :lastname, :gender, :email, :date_of_birth, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
