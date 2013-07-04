class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.date :day
      t.float :weight
      t.integer :systolic
      t.integer :diastolic
      t.integer :low_bag
      t.integer :med_bag
      t.integer :high_bag
      t.integer :external_bag
      t.integer :initial_drain
      t.integer :total_uf
      t.integer :avg_dwell_time
      t.integer :blood_sugar
      t.boolean :epo_vial_opened
      t.string :comments
      t.references :monthly

      t.timestamps
    end
    add_index :entries, :monthly_id
  end
end
