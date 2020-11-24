crumb :root do
  link "Home", root_path
end

crumb :planets do
  link "All Planets", planets_path
end

crumb :alphabetized_planets do
  link "Alphabetized Planets", alphabetized_planets_path
  parent :planets
end

crumb :newest_planets do
  link "Newest Planets", newest_planets_path
  parent :planets
end

crumb :hightolow_planets do
  link "High to Low Planets", hightolow_planets_path
  parent :planets
end

crumb :lowtohigh_planets do
  link "Low to High Planets", lowtohigh_planets_path
  parent :planets
end

crumb :planet do |planet|
  link planet.name, planet
  parent :planets
end

crumb :stars do
  link "All Stars", stars_path
end

crumb :alphabetized_stars do
  link "Alphabetized Stars", alphabetized_stars_path
  parent :stars
end

crumb :newest_stars do
  link "Newest Stars", newest_stars_path
  parent :stars
end

crumb :hightolow_stars do
  link "High to Low Stars", hightolow_stars_path
  parent :stars
end

crumb :lowtohigh_stars do
  link "Low to High Stars", lowtohigh_stars_path
  parent :stars
end

crumb :star do |star|
  link star.name, star
  parent :stars
end

crumb :asteroids do
  link "All Asteroids", asteroids_path
end

crumb :alphabetized_asteroids do
  link "Alphabetized Asteroids", alphabetized_asteroids_path
  parent :asteroids
end

crumb :newest_asteroids do
  link "Newest Asteroids", newest_asteroids_path
  parent :asteroids
end

crumb :hightolow_asteroids do
  link "High to Low Asteroids", hightolow_asteroids_path
  parent :asteroids
end

crumb :lowtohigh_asteroids do
  link "Low to High Asteroids", lowtohigh_asteroids_path
  parent :asteroids
end

crumb :asteroid do |asteroid|
  link asteroid.name, asteroid
  parent :asteroids
end
