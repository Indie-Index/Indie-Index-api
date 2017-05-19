class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :overview, :body
end
