class Article < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content, :tag, :title
  validates :user_id, presence: true
  default_scope order: 'articles.created_at DESC'
  paginates_per 50
end
