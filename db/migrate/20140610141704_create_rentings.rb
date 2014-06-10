class CreateRentings < ActiveRecord::Migration
  def change
    create_table :rentings do |t|
      t.string :renting_object,        null: false, default: ""
      t.string :renting_min_duration,  null: false, default: ""
      t.string :renting_cost,          null: false, default: ""
      t.string :renting_cost_duration, null: false, default: "" 
      
      t.timestamps
    end
  end
end
