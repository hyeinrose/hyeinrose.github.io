class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :trip
      t.string :email
      t.string :name
      t.string :content
      #t.integer:trip_id

      t.timestamps null: false
    end
  end
end
