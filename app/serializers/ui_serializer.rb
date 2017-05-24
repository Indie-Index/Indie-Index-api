class UiSerializer < ActiveModel::Serializer
  attributes :id, :category, :convention, :overview, :carousel, :body
end
