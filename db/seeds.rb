MemberRound.destroy_all
HoleScore.destroy_all
Round.destroy_all
Hole.destroy_all
Course.destroy_all
Member.destroy_all

# Create the course
rabun_national = Course.create(name: 'Rabun National', location: 'Rabun County, Georgia')

# Hole data
holes = [
  { number: 1, par: 4, distance: 295 },
  { number: 2, par: 4, distance: 274 },
  { number: 3, par: 3, distance: 186 },
  { number: 4, par: 3, distance: 160 },
  { number: 5, par: 4, distance: 329 },
  { number: 6, par: 5, distance: 490 },
  { number: 7, par: 4, distance: 244 },
  { number: 8, par: 3, distance: 174 },
  { number: 9, par: 5, distance: 492 }
]

# Add holes to the course
holes.each do |hole_attrs|
  rabun_national.holes.create(hole_attrs)
end

puts "Created #{Course.count} course(s) with a total of #{Hole.count} hole(s)."

# Create Members
members_attributes = [
  { email: 'stephens.lawton@gmail.com', password: 'password', first_name: 'Lawton', last_name: 'Stephens', date_of_birth: '1988-08-10' },
  { email: 'ari.stephens@gmail.com', password: 'password', first_name: 'Ari', last_name: 'Stephens', date_of_birth: '2020-12-01' }
]

members = members_attributes.map do |attrs|
  Member.create!(attrs)
end

# Create a Round
round = Round.create!(date: Time.now, course: rabun_national)

# Associate Members with the Round and record scores
members.each do |member|
  member_round = MemberRound.create!(member: member, round: round, total_score: 0) 

  total_score = 0
  
  rabun_national.holes.each do |hole|
    strokes = hole.par
    HoleScore.create!(member_round: member_round, hole: hole, strokes: strokes)
    total_score += strokes
  end

  member_round.update(total_score: total_score)
end

puts "Seed data created successfully!"
