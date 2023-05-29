class Post::VoteValidator < ActiveModel::Validator
  def validate(record)
    return unless (record.upvotes - record.downvotes).negative?

    record.errors.add :base, 'Votes not valid'
  end
end
