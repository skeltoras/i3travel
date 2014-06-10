class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      
      # required fields basic customer datat
      t.string :customer_name,       null: false, default: ""     
      t.string :customer_street,     null: false, default: ""
      t.string :customer_plz,        null: false, default: ""
      t.string :customer_city,       null: false, default: ""
      t.string :customer_state,      null: false, default: ""
      t.string :customer_telephone,  null: false, default: ""
      
      # non-required fields basic customer data
      t.string :customer_contact
      t.string :customer_telefax
      t.string :customer_email
      t.string :customer_homepage
      
      # customer settings
      t.boolean :customer_is_active,  null: false, default: 1
      t.boolean :customer_show_email, null: false, default: 0

      t.timestamps
    end
  end
end
