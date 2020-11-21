class CreateGoalRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :goal_records do |t|
      t.datetime :date
      t.string :field_1_type, :null => true 
      t.string :field_1_data, :null => true 
      t.string :field_2_type, :null => true 
      t.string :field_2_data, :null => true
      t.string :field_3_type, :null => true 
      t.string :field_3_data, :null => true
      t.belongs_to :goal

      t.timestamps
    end
  end
end
