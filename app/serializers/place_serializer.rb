class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :content, :done, :list

  def list
    object.list.id
  end
end
