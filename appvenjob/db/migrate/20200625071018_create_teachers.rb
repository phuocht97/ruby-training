class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :ta_duty_id
      t.string :ta_duty_type

      t.timestamps null: false
    end
  end
end
