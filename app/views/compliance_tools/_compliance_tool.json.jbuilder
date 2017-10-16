json.extract! compliance_tool, :id, :customer_name, :date_of_flag, :transaction_amount_if_applicable, :notes, :customer_number, :open_or_closed, :created_at, :updated_at
json.url compliance_tool_url(compliance_tool, format: :json)
