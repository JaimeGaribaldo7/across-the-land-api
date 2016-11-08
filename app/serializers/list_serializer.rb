class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :hidden, :places

  def places
    object.places.pluck(:id)
  end
end
