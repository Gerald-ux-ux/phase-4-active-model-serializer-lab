class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_one :profile
  has_many :posts
  has_many :post_tags
  has_many :tags, through: :post_tag

  def short_content
    "#{object.content[0..39]}..."
  end
end
