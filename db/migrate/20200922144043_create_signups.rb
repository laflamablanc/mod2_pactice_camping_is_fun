class CreateSignups < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.integer :camper_id
      t.integer :activity_id
      t.integer :start_time   #(0-23)

      t.timestamps
    end
  end
end
