class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :writer
      t.string :title
      t.string :content
      t.string :attachment
      t.timestamps null: false
    end
  end
end
