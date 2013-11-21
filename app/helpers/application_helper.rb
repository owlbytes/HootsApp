module ApplicationHelper

  def randomized_post_image()
    images = ["London1.jpeg", "dark_sunset.jpg", "purple_forest.png", "brickwall_1", "fireflies-in-the-forest-309979.jpg", "fireworks.jpg", "venus.jpg", "aurora.jpg", "planet_ocean.jpg", "Green-Fields.jpg", "sunset.jpg", "deep_blue_sea_by_mudukrull.jpg", "darkcity.jpg", "giraffe-sunset-wallpaper.jpg", "orangeleaf.jpg", "seasunset.jpg", "seasunset2.jpg", "seasunset3.jpg"]  
    images[rand(images.size)]
  end

end
