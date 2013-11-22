
User.delete_all
Post.delete_all
Comment.delete_all
Score.delete_all
Star.delete_all

user1 = User.create!(name: "Neha", image: nil, role: 'admin', email: "neshah07@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '07459026812')

user2 = User.create!(name: "Jamie", image: nil, role: 'admin', email: "wallacejamiec@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '07762631223')

user3 = User.create!(name: "Alex", image: nil, role: 'admin', email: "alexham100@aol.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '07966476444')

user4 = User.create!(name: "Adam", image: nil, role: 'admin', email: "adam.buchan@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '07711802216')

user5 = User.create!(name: "AlexF", image: nil, role: 'user', email: "fakealexf@fakealexf.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447404091313')
user6 = User.create!(name: "Daida", image: nil, role: 'user', email: "fakedaida@fakedaida.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447541738660')
user7 = User.create!(name: "Jack", image: nil, role: 'user', email: "fakejack@fakejack.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447554660387')

user8 = User.create!(name: "Johnny", image: nil, role: 'user', email: "fakejohnny@fakejohnny.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447775864983')

user9 = User.create!(name: "Maloney", image: nil, role: 'user', email: "fakemaloney@fakemaloney.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447775864983')

user10 = User.create!(name: "Oli", image: nil, role: 'user', email: "fakeoli@fakeoli.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447775864983')

user11 = User.create!(name: "Ralph", image: nil, role: 'user', email: "fakeralph@fakeralph.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447985057831')

user12 = User.create!(name: "Selina", image: nil, role: 'user', email: "fakeselina@fakeselina.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447912653262')

user13 = User.create!(name: "Sharif", image: nil, role: 'user', email: "fakesharif@fakesharif.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447981644487')

user14 = User.create!(name: "Sophie", image: nil, role: 'user', email: "fakessophie@fakesophie.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447807606717')

user15 = User.create!(name: "Winna", image: nil, role: 'user', email: "fakewinna@fakewinna.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447447949275')

user16 = User.create!(name: "David", image: nil, role: 'user', email: "fakedavid@fakedavid.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447975921143')

user17 = User.create!(name: "Gerry", image: nil, role: 'user', email: "fakegerry@fakegerry.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447462784767')

user18 = User.create!(name: "Jon", image: nil, role: 'user', email: "fakeJon@fakejon.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447941500718')

user19 = User.create!(name: "Julien", image: nil, role: 'user', email: "fakeJulien@fakejulien.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2013-11-18 11:18:14", last_sign_in_at: "2013-11-17 18:29:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2013-11-17 16:26:44", confirmation_sent_at: "2013-11-17 16:26:20", unconfirmed_email: nil, provider: nil, uid: nil, phone_no: '+447455902961')


post1 = Post.create!(content: 'If opportunity doesn’t knock, build a door.', image: 'placeholder', geostamp: 'geo1', score: 1, upvoters: "[]", downvoters: "[]")
post2 = Post.create!(content: 'A journey of a thousand leagues begins beneath one’s feet.', image: 'placeholder', geostamp: 'geo2', score: 2, upvoters: "[]", downvoters: "[]")
post3 = Post.create!(content: 'Do not go where the path may lead; go instead where there is no path and leave a trail.', image: 'placeholder', geostamp: 'geo3', score: 3, upvoters: "[]", downvoters: "[]")
post4 = Post.create!(content: 'I haven’t failed. I’ve just found 10,000 ways that won’t work.', image: 'placeholder', geostamp: 'geo4', flag: true, score: 4, upvoters: "[]", downvoters: "[]")

post5 = Post.create!(content: 'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart', image: 'placeholder', geostamp: 'geo4', flag: true, score: 4, upvoters: "[]", downvoters: "[]")

post6 = Post.create!(content: 'It is during our darkest moments that we must focus to see the light', image: 'placeholder', geostamp: 'geo4', flag: true, score: 4, upvoters: "[]", downvoters: "[]")

post7 = Post.create!(content: 'Try to be like the turtle - at ease in your own shell.', image: 'placeholder', geostamp: 'geo4', flag: true, score: 4, upvoters: "[]", downvoters: "[]")

post8 = Post.create!(content: 'Happiness is not something you postpone for the future; it is something you design for the present.', image: 'placeholder', geostamp: 'geo4', flag: true, score: 4, upvoters: "[]", downvoters: "[]")

post9 = Post.create!(content: 'What we achieve inwardly will change outer reality.', image: 'placeholder', geostamp: 'geo4', flag: true, score: 4, upvoters: "[]", downvoters: "[]")

post10 = Post.create!(content: 'What we obtain too cheap, we esteem too lightly: it is dearness only that gives every thing its value.', image: 'placeholder', geostamp: 'geo4', flag: true, score: 4, upvoters: "[]", downvoters: "[]")
    

comment1 = Comment.create!(content: 'So true!')
comment2 = Comment.create!(content: 'Needed to read this today!')
comment3 = Comment.create!(content: 'Amazing words of wisdom')
comment4 = Comment.create!(content: 'Spot on!', flag: true)
comment5 = Comment.create!(content: 'Cool!', flag: true)
comment6 = Comment.create!(content: 'Awesome!', flag: true)
comment7 = Comment.create!(content: 'Great Quote!', flag: true)
comment8 = Comment.create!(content: 'This is silly!', flag: true)
comment9 = Comment.create!(content: 'Troll!', flag: true)
comment10 = Comment.create!(content: 'Super Troll!', flag: true)


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
user5.posts << post5
user6.posts << post6
user7.posts << post7
user8.posts << post8
user9.posts << post9
user10.posts << post10

# User and post assignation for comments
post1.comments << comment1
post1.comments << comment2
post2.comments << comment3
post4.comments << comment4
post5.comments << comment5
post6.comments << comment6
post7.comments << comment7
post8.comments << comment8
post9.comments << comment9
post10.comments << comment10

user1.comments << comment10
user2.comments << comment9
user3.comments << comment8
user4.comments << comment7
user5.comments << comment6
user6.comments << comment5
user7.comments << comment4
user8.comments << comment3
user9.comments << comment2
user10.comments << comment1

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

# Adam Buchan, +447711802216
# Alex Fasanmade, +447404091313
# Alex Hamlin, +447966476444
# Daida Medina, +447541738660
# Jack Lalley, +447554660387
# Jamie Wallace, +447762631223
# Jonathan Adshead, +447775864983
# Maloney Liu, +447472138766
# Néha Shah, +447459026812
# Oliver Peate, +447913022328
# Ralph Reid, +447985057831
# Selina Chotai, +447912653262
# "Sharif Zu'bi", +447981644487
# Sophie Chitty, +447807606717
# Winna Bridgewater, +447447949275
# David Grilli, +447975921143
# Gerry Mathe, +447462784767
# Jon Chambers, +447941500718
# Julien  Deslangles-Blanch, +447455902961

