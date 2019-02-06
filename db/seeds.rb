City.destroy_all
User.destroy_all
Gossip.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('cities')
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('gossips')

# City.create!(name: 'dimension a, dimension b je ne le sais pas', zip_code: 696969)
# User.create!(
# 	city_id: 1,
# 	first_name: 'Fazerman',
# 	last_name: ' ',
# 	username: 'Pussy Destroyer',
# 	email: 'allonsniquerdesputes@bg.superbg',
# 	age: 12,
# 	description: "Salut c'est Fazerman j'ai créé cette chaîne pour vous faire partager mes passions : jeux vidéo, moto et peinture. Une fois par mois ou plus Fazerman postera une nouvelle vidéo sur les thèmes suivants : jeux vidéo (Starcraft, Hearthstone, League of Legends). Ces vidéos s'adresse aux joueurs débutants et- aux amateurs de game fun. Merci à ceux qui me suivent et me suivront. Tous les commentaires constructifs sont les bienvenus, abonnez-vous, likez et partagez !!!")

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
