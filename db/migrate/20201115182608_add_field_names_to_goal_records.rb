class AddFieldNamesToGoalRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :goal_records, :field_1_name, :string
    add_column :goal_records, :field_2_name, :string
    add_column :goal_records, :field_3_name, :string
  end
end
