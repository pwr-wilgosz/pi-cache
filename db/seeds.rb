# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Article.delete_all
articles = []

100.times do |i|
  articles << Article.new(title: "Article #{i}", body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elementum metus tortor, nec ultrices tortor porttitor vitae. Aenean tempus dictum enim, eu dignissim tellus vulputate ac. Nullam ut convallis quam, non commodo ex. Sed laoreet sit amet mi sed lobortis. Quisque vitae faucibus metus, quis lobortis turpis. Etiam vestibulum pellentesque dui, eget sollicitudin felis posuere ut. Mauris vestibulum ex ac bibendum pulvinar. Curabitur non nunc gravida, egestas augue vitae, tristique ipsum.

Praesent maximus rutrum sapien, in efficitur sapien laoreet eget. Morbi tempor condimentum eros laoreet tincidunt. Sed hendrerit, erat sed mollis pretium, enim purus vestibulum diam, et feugiat leo neque eu ligula. Curabitur feugiat elit vel tempus sollicitudin. Duis euismod porttitor quam, id semper elit suscipit rhoncus. Etiam dictum turpis nulla, in consectetur turpis laoreet sit amet. Nunc at rhoncus urna.

Quisque vitae sem vel nisi luctus aliquet. Ut in imperdiet sapien. Integer tincidunt dui ac eros posuere iaculis. Curabitur in semper nisi, in auctor mauris. Nunc nec ultricies ligula. Nulla nec semper enim, et lacinia leo. Curabitur maximus massa vitae imperdiet dapibus. Ut vel aliquam arcu. Donec a lacinia dui. Curabitur lacinia, augue vel molestie gravida, eros nisl accumsan ipsum, ac ornare ex metus nec nibh. Praesent nisl dolor, vestibulum et tortor sit amet, interdum suscipit nibh. Aenean faucibus nec dolor at consectetur. Morbi sed molestie dolor.

Sed vel ante ut neque venenatis lobortis. Maecenas ac ornare risus. Morbi odio metus, blandit vitae pharetra vitae, efficitur nec lorem. Nulla facilisi. Cras non porta mi. Ut nec pulvinar eros. Nunc gravida turpis urna, ut condimentum odio imperdiet a. Mauris eget eleifend ante, in hendrerit odio. Suspendisse ut euismod tellus, ultricies condimentum sem. In eget nisl sed erat pharetra venenatis nec eu urna. Duis non mattis nunc. Sed vel consectetur nisl, pharetra elementum sem. In ex metus, accumsan vehicula imperdiet non, feugiat sit amet lorem. Donec vel tortor nisl. Ut sollicitudin rutrum nunc pharetra pretium.

Pellentesque sit amet quam gravida, vestibulum lacus sed, feugiat lacus. Nulla vehicula tortor id sodales fermentum. Integer efficitur velit vel consequat ultrices. Vivamus nec elementum arcu. In id justo vel tortor congue finibus. Fusce nec justo nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;')
end

Article.import articles

Comment.delete_all
comments = []

Article.pluck(:id).each_with_index do |article_id, index|
  100.times do |i|
    comments << Comment.new(article_id: article_id, body: "Lorem Ipsum For Article #{article_id} nr #{i+index}" )
  end
end

Comment.import comments
