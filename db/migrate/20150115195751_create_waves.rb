class CreateWaves < ActiveRecord::Migration
  def change
    create_table :waves do |t|
      t.integer :user_id
      t.string :post

      t.timestamps
    end
  end
end
