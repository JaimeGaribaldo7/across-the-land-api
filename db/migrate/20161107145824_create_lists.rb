class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string  :title,  null: false
      t.boolean :hidden, null: false, default: false

      t.timestamps null: false
    end
  end
end
