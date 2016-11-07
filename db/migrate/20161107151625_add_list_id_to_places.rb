class AddListIdToPlaces < ActiveRecord::Migration
  def change
    add_reference :places, :list, index: true, foreign_key: true
  end
end
