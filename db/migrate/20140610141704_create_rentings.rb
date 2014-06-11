class CreateRentings < ActiveRecord::Migration
  def change
    create_table :rentings do |t|
      
      t.string :renting_object,           null: false, default: ""
      t.string :renting_min_duration,     null: false, default: ""
      t.string :renting_cost,             null: false, default: ""
      t.string :renting_cost_duration,    null: false, default: ""
      t.string :renting_location,         null: false, default: ""
      t.string :renting_region,           null: false, default: "" 
      t.string :renting_state,            null: false, default: ""
      t.string :renting_display_offer,    null: false, default: ""
      t.string :renting_object_shortdesc, null: false, default: ""
      t.text :renting_object_longdesc,    null: false, default: ""
      t.boolean :renting_gallery,         null: false, default: 0
      t.boolean :renting_header_picture,  null: false, default: 0
      t.boolean :renting_header_slider,   null: false, default: 0
      t.boolean :renting_video,           null: false, default: 0
      t.boolean :renting_calendar,        null: false, default: 0
      t.boolean :renting_form,            null: false, default: 0
      t.date :renting_calendar_start
      t.date :renting_calendar_end
      
      t.timestamps
    end
  end
end
