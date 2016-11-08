# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
lists = {
  'Places to go in the summer' => %w(Example\ Place),
  'Places to go in the spring' => %w(Example\ Place),
  'Places to go in the fall' => %w(Example\ Place),
  'Places to go in the winter' => %w(Not\ the\ East\ Coast)
}

lists.each do |title, places|
  list = List.find_or_create_by title: title
  places.each do |content|
    place = { content: content }
    list.places.create place unless list.places.exists? place
  end
end
