
User.delete_all
Post.delete_all
Comment.delete_all
Score.delete_all
Star.delete_all

user1 = User.create!(name: "Neha", image: nil, role: 'admin', email: "neshah07@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, fav_users: '[]', fav_posts: '[]')

user2 = User.create!(name: "Jamie", image: nil, role: 'admin', email: "wallacejamiec@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, fav_users: '[]', fav_posts: '[]')

user3 = User.create!(name: "Alex", image: nil, role: 'admin', email: "alexham100@aol.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, fav_users: '[]', fav_posts: '[]')

user4 = User.create!(name: "Adam", image: nil, role: 'admin', email: "adam.buchan@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, fav_users: '[]', fav_posts: '[]')

post1 = Post.create!(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra diam ut velit accumsan vestibulum. Aliquam id vulputate nisi metus.', image: 'placeholder', geostamp: 'geo1', score: 10)
post2 = Post.create!(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra diam ut velit accumsan vestibulum. Aliquam id vulputate nisi metus.', image: 'placeholder', geostamp: 'geo2', score: 5)
post3 = Post.create!(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra diam ut velit accumsan vestibulum. Aliquam id vulputate nisi metus.', image: 'placeholder', geostamp: 'geo3', score: 2)
post4 = Post.create!(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra diam ut velit accumsan vestibulum. Aliquam id vulputate nisi metus.', image: 'placeholder', geostamp: 'geo4', flag: true, score: 7)

comment1 = Comment.create!(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra diam ut velit accumsan vestibulum. Aliquam id vulputate nisi metus.')
comment2 = Comment.create!(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra diam ut velit accumsan vestibulum. Aliquam id vulputate nisi metus.')
comment3 = Comment.create!(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra diam ut velit accumsan vestibulum. Aliquam id vulputate nisi metus.')
comment4 = Comment.create!(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam pharetra diam ut velit accumsan vestibulum. Aliquam id vulputate nisi metus.', flag: true)

# score1 = Score.create!(score: 1)
# score2 = Score.create!(score: -1)
# score3 = Score.create!(score: 1)
# score4 = Score.create!(score: -1)
# score5 = Score.create!(score: 1)
# score6 = Score.create!(score: -1)

# star1 = Star.create!
# star2 = Star.create!
# star3 = Star.create!
# star4 = Star.create!
# star5 = Star.create!
# star6 = Star.create!

# User assignation for posts
user1.posts << post1
user1.posts << post2
user2.posts << post3
user4.posts << post4

# User and post assignation for comments
post1.comments << comment1
post1.comments << comment2
post2.comments << comment3
post4.comments << comment4

user1.comments << comment4
user1.comments << comment2
user3.comments << comment1
user4.comments << comment3

# # Score seeding
# post1.scores << score1
# user1.scores << score1

# post2.scores << score2
# user1.scores << score2

# post3.scores << score3
# user2.scores << score3

# post2.scores << score4
# user3.scores << score4

# post3.scores << score5
# user3.scores << score5

# post3.scores << score6
# user4.scores << score6

# # Star seeding
# post1.stars << star1
# user1.stars << star1

# post2.stars << star2
# user1.stars << star2

# post3.stars << star3
# user1.stars << star3

# post2.stars << star4
# user2.stars << star4

# post2.stars << star5
# user4.stars << star5

# post3.stars << star6
# user4.stars << star6

