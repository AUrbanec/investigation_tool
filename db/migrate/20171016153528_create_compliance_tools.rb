class CreateComplianceTools < ActiveRecord::Migration
  def change
    create_table :compliance_tools do |t|
      t.text :customer_name
      t.text :date_of_flag
      t.text :transaction_amount_if_applicable
      t.text :notes
      t.text :customer_number
      t.text :open_or_closed

      t.timestamps
    end
  end
end
