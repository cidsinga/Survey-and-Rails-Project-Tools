# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# survey_list = [
#   [ "John Oak", "Quercus" ],
#   [ "Jane Pine", "Pinus" ],
#   [ "Sid Sycamore", "Platanus" ],
#   [ "Allister Alder", "Alnus" ],
#   [ "Betty Birch", "Betula"],
#   [ "Candy Cherry", "Prunus"]
# ]
#
# survey_list.each do |author, title|
#   Survey.create( author: author, title: title )
# end
Survey.destroy_all
Question.destroy_all

50.times do |index|
  surveys = []
  surveys.push(Survey.create!(title: Faker::TvShows::BreakingBad.episode, author: Faker::Superhero.name))
  surveys
  surveys.each do |survey|
  Question.create! :q1 => Faker::ChuckNorris.fact,
                   :survey_id => survey.id
  end
end

p "Created #{Survey.count} surveys"
# p "#{surveys}"
