json.array!(@comments) do |comment|
  json.extract! comment, :id, :article_id, :body
  json.extract! comment.article, :id, :title, :body
  json.url comment_url(comment, format: :json)
end

