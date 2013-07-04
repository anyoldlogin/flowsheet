class CreateMonthlies < ActiveRecord::Migration
  def change
    create_table :monthlies do |t|
      t.references :user
      t.string :month
      t.integer :day
      t.float :total_volume
      t.float :fill_volume
      t.integer :therapy_time
      t.float :last_fill
      t.float :target_weight

      t.timestamps
    end
    add_index :monthlies, :user_id
  end
end
