class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :field_number
      t.integer :position
      t.integer :streak
      t.integer :level
      t.belongs_to :user

      t.timestamps
    end
  end
end
