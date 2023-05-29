class Post < ApplicationRecord
  MAX_TITLE_LENGTH = 125

  validates_with VoteValidator, fields: %i[upvotes downvotes]
  validates :title, presence: true, length: { maximum: MAX_TITLE_LENGTH }
  validates :is_blog_worthy, inclusion: [true, false]
end