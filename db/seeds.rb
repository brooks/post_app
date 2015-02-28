brooks = User.create!({ email: 'brooks@yardclub.com', 
                        password: 'password',
                        first_name: 'brooks',
                        last_name: 'mason',
                        city: 'oakland' })

# seed posts
10.times do |i|
  post = Post.create!({ author: brooks,
                        title: "Post #{i}",
                        content: ("Lorem ipsum " * 100) })
  # post comments
  5.times do
    comment = Comment.create!({ author: brooks, 
                                content: ("Lorem ipsum " * 10),
                                post: post })
    # child comments
    5.times do
      Comment.create!({ author: brooks, 
                        parent: comment,
                        content: ("Lorem ipsum " * 10),
                        post: post })
    end
  end
end
