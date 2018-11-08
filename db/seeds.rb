ActsAsVotable::Vote.create!([
  {votable_type: "Post", votable_id: 2, voter_type: "User", voter_id: 1, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Post", votable_id: 2, voter_type: "User", voter_id: 2, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Post", votable_id: 6, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Post", votable_id: 5, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Post", votable_id: 4, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_type: "Post", votable_id: 3, voter_type: "User", voter_id: 3, vote_flag: true, vote_scope: nil, vote_weight: 1}
])
User.create!([
  {email: "test@gmail.com", encrypted_password: "$2a$11$IvB5FusEqST.8lcv8Ry1HOdxoLog5Vv416TVG/IS6PeO5qRk8aw7a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, user_name: "bentran", avatar_file_name: "nar.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 87438, avatar_updated_at: "2018-11-07 09:43:29", bio: ""},
  {email: "naruto111@gmail.com", encrypted_password: "$2a$11$Dy0IYDw/IWniiUwar3LfKuMo1CMYbSxDx.wKny.kY3evwdl2xOfsC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, user_name: "kakashi", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil},
  {email: "qweasd@gmail.com", encrypted_password: "$2a$11$CD4kaJMaRL/DgFngftdTH.8twyz8chnkMPdti67bzb1v6ipagN4Te", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, user_name: "paul pogba", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, bio: nil}
])
Comment.create!([
  {user_id: 1, post_id: 2, content: "ewe"},
  {user_id: 1, post_id: 2, content: "asdasd"},
  {user_id: 1, post_id: 2, content: "sadad"},
  {user_id: 1, post_id: 2, content: "sadasd"},
  {user_id: 1, post_id: 2, content: "asdasd"},
  {user_id: 1, post_id: 2, content: "asdasd"},
  {user_id: 1, post_id: 1, content: "asdasd"},
  {user_id: 1, post_id: 2, content: "asdasd"},
  {user_id: 3, post_id: 2, content: "fsddsf"},
  {user_id: 3, post_id: 3, content: "asdasd"},
  {user_id: 3, post_id: 3, content: "asdadsa"},
  {user_id: 3, post_id: 5, content: "asdasd"}
])
Post.create!([
  {caption: "Title", image_file_name: "74.jpg", image_content_type: "image/jpeg", image_file_size: 51174, image_updated_at: "2018-11-07 06:58:15", user_id: 1},
  {caption: "fsdffdfdsf", image_file_name: "73.jpg", image_content_type: "image/jpeg", image_file_size: 95388, image_updated_at: "2018-11-07 07:00:12", user_id: 1},
  {caption: "asd", image_file_name: "71.jpg", image_content_type: "image/jpeg", image_file_size: 153068, image_updated_at: "2018-11-08 02:21:20", user_id: 3},
  {caption: "dsaasd", image_file_name: "75.jpg", image_content_type: "image/jpeg", image_file_size: 40634, image_updated_at: "2018-11-08 02:21:44", user_id: 3},
  {caption: "asdasd", image_file_name: "lucdao.png", image_content_type: "image/png", image_file_size: 394096, image_updated_at: "2018-11-08 02:21:53", user_id: 3},
  {caption: "cr7", image_file_name: "cr7.jpg", image_content_type: "image/jpeg", image_file_size: 71983, image_updated_at: "2018-11-08 02:22:45", user_id: 3}
])
