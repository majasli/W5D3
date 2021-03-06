class Post < ApplicationRecord
  validates :author, :content, :title, presence: true

  belongs_to :author,
  class_name: :User,
  foreign_key: :author_id,
  primary_key: :id

  has_many :post_subs,
  inverse_of: :post,
  class_name: "PostSub",
  foreign_key: :post_id,
  primary_key: :id

  has_many :subs,
  through: :post_subs,
  source: :sub


end
