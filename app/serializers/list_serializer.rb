class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :hidden, :places

  def items
    object.places.pluck(:id)
  end
end
