AdminUser.delete_all
Planet.delete_all
PlanetType.delete_all
Star.delete_all
StarType.delete_all
Asteroid.delete_all
AsteroidType.delete_all

5.times do
  planet_type = PlanetType.create(name: Faker::Creature::Cat.unique.breed)

  5.times do
    planet = planet_type.planets.create(
      name:        Faker::Creature::Cat.unique.name,
      cost:        rand(1000..99_999),
      description: Faker::Creature::Cat.registry
    )
    query = URI.encode_www_form_component([planet.name, planet_type.name].join(","))
    downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")
    planet.image.attach(io: downloaded_image, filename: "m-#{[planet.name, planet_type.name].join('-')}.jpg")
  end
end

5.times do
  star_type = StarType.create(name: Faker::Creature::Dog.unique.breed)

  5.times do
    star = star_type.stars.create(
      name:        Faker::Creature::Dog.unique.name,
      cost:        rand(1000..99_999),
      description: Faker::Creature::Cat.registry
    )
    query = URI.encode_www_form_component([star.name, star_type.name].join(","))
    downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")
    star.image.attach(io: downloaded_image, filename: "m-#{[star.name, star_type.name].join('-')}.jpg")
  end
end

5.times do
  asteroid_type = AsteroidType.create(name: Faker::Creature::Horse.unique.breed)

  5.times do
    asteroid = asteroid_type.asteroids.create(
      name:        Faker::Creature::Horse.unique.name,
      cost:        rand(1000..99_999),
      description: Faker::Creature::Cat.registry
    )
    query = URI.encode_www_form_component([asteroid.name, asteroid_type.name].join(","))
    downloaded_image = URI.open("https://source.unsplash.com/600x600/?#{query}")
    asteroid.image.attach(io: downloaded_image, filename: "m-#{[asteroid.name, asteroid_type.name].join('-')}.jpg")
  end
end

if Rails.env.development?
  AdminUser.create!(email: "admin@example.com", password: "password", password_confirmation: "password")
end
