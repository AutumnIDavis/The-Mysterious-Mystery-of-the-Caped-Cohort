class Window < ApplicationRecord
require 'gosu'


  def initialize
    super 640, 480
    self.caption = "Gosu Tutorial Game"
  end

  def update
  end

  def draw
@background_image.draw(0, 0, 0)
  end
end

window = GameWindow.new
window.show
end
