10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w([chinese italian japanese french belgian]).sample
  )
  restaurant.save!
  5.times do
    review = Review.new(
      content: Faker::Restaurant.review,
      rating: (0..5).to_a.sample
    )
    review.restaurant = restaurant
    review.save!
  end
end
