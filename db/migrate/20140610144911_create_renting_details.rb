class CreateRentingDetails < ActiveRecord::Migration
  def change
    create_table :renting_details do |t|
      t.string :shortdescription
      t.text :longdescription

      t.timestamps
    end
  end
end
