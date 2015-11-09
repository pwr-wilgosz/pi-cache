class Comment < ActiveRecord::Base
  belongs_to :article

  def rate
    100.times { |i| ((4399999769.32*(i)*article.comments.count)/434992499.23)/(i*100.0) }
  end
end
