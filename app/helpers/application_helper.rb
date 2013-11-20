module ApplicationHelper

  def randomized_post_image()
    images = ["assets/London1.jpeg", "assets/dark_sunset.jpg", "assets/purple_forest.png"]  
    images[rand(images.size)]
  end

end
