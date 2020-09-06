# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy messages"
Message.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('messages')

puts "Destroy users"
User.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')

puts "Destroy channels"
Channel.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('channels')

Channel.create(name: 'general')
Channel.create(name: 'react')
Channel.create(name: 'paris')

User.create(email:'johndoe@gmail.com', password: 'topsecret')
User.create(email:'janedoe@gmail.com', password: 'topsecret')

Message.create(user_id: 1, channel_id: 1, content: "Hello general")
Message.create(user_id: 1, channel_id: 2, content: "Hello react")
Message.create(user_id: 1, channel_id: 3, content: "Hello paris")

Message.create(user_id: 2, channel_id: 1, content: "How are u")
Message.create(user_id: 2, channel_id: 2, content: "How are u")
Message.create(user_id: 2, channel_id: 3, content: "How are u")

