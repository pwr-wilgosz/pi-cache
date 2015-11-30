class Comment < ActiveRecord::Base
  belongs_to :article

  def rate
    (1..1000000).to_a.reduce(0) {|r,i| (r+i)}
  end
end
