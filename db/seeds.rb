
User.delete_all
Post.delete_all
Comment.delete_all
Score.delete_all
Star.delete_all

user1 = User.create!(name: 'Neha', email: 'neha@neha.com', image: 'placeholder', role: 'user', password: "password")
user2 = User.create!(name: 'Jamie', email: 'jamie@jamie.com', image: 'placeholder', role: 'admin', password: "password")
user3 = User.create!(name: 'Alex', email: 'alex@alex.com', image: 'placeholder', role: 'user', password: "password")
user4 = User.create!(name: 'Adam', email: 'adam@adam.com', image: 'placeholder', role: 'user', password: "password")

post1 = Post.create!(content: 'Post 1', image: 'placeholder', geostamp: 'geo1')
post2 = Post.create!(content: 'Post 2', image: 'placeholder', geostamp: 'geo2')
post3 = Post.create!(content: 'Post 3', image: 'placeholder', geostamp: 'geo3')
post4 = Post.create!(content: 'Post 4', image: 'placeholder', geostamp: 'geo4', flag: true)

comment1 = Comment.create!(content: 'Comment 1')
comment2 = Comment.create!(content: 'Comment 2')
comment3 = Comment.create!(content: 'Comment 3')
comment4 = Comment.create!(content: 'Comment 4', flag: true)

score1 = Score.create!(score: 1)
score2 = Score.create!(score: -1)
score3 = Score.create!(score: 1)
score4 = Score.create!(score: -1)
score5 = Score.create!(score: 1)
score6 = Score.create!(score: -1)

star1 = Star.create!
star2 = Star.create!
star3 = Star.create!
star4 = Star.create!
star5 = Star.create!
star6 = Star.create!

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

# Score seeding
post1.scores << score1
user1.scores << score1

post2.scores << score2
user1.scores << score2

post3.scores << score3
user2.scores << score3

post2.scores << score4
user3.scores << score4

post3.scores << score5
user3.scores << score5

post3.scores << score6
user4.scores << score6

# Star seeding
post1.stars << star1
user1.stars << star1

post2.stars << star2
user1.stars << star2

post3.stars << star3
user1.stars << star3

post2.stars << star4
user2.stars << star4

post2.stars << star5
user4.stars << star5

post3.stars << star6
user4.stars << star6

