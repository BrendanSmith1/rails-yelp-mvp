puts "Cleaning database..."
Restaurant.destroy_all

Restaurant.create!(name: 'dishOom', address: 'London', category: 'chinese')
Restaurant.create!(name: 'shababs', address: 'Birmingham', category: 'italian')
Restaurant.create!(name: 'Chez lindsay', address: 'Clapham', category: 'french')
Restaurant.create!(name: 'sista Dumpling', address: 'Canggu', category: 'japanese')
Restaurant.create!(name: 'waffle', address: 'Bali', category: 'belgian')

puts 'Finished'
