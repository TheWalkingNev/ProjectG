City.destroy_all
User.destroy_all
Gossip.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('cities')
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('gossips')

50.times do |i|
	city = City.create!(
    name: Faker::ElderScrolls.city,
    zip_code: Faker::Address.zip_code)
	print '.'
end
puts '=== City DB created ==='

50.times do |j|
	user = User.create!(
		city_id: City.all.sample.id,
    first_name: Faker::Superhero.prefix,
    last_name: Faker::BackToTheFuture.character,
    username: Faker::DragonBall.character,
    email: Faker::Internet.email,
    age: rand(12..120),
    description: Faker::StrangerThings.quote)
  print '.'
end
puts '=== User DB created ==='

50.times do |k|
	gossip = Gossip.create!(
    user_id: User.all.sample.id,
    title: Faker::Pokemon.move,
    content: Faker::StarWars.wookiee_sentence)
	print '.'
end
puts '=== Gossip DB created ==='

50.times do |l|
	comment = Comment.create!(
    user_id: User.all.sample.id,
		gossip_id: Gossip.all.sample.id,
    content: Faker::DumbAndDumber.quote)
	print '.'
end
puts '=== Comment DB created ==='
