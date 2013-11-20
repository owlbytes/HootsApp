module ApplicationHelper

  def randomized_post_image()
    images = ["London1.jpeg", "dark_sunset.jpg", "purple_forest.png"]  
    images[rand(images.size)]
  end

end
