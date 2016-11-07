class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string  :content, null: false
      t.boolean :done,    null: false, default: false

      t.timestamps null: false
    end
  end
end
