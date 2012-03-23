class Location
  attr_accessor :top, :left

  def initialize(attributes={})
    @top = attributes[:top] || 0
    @left = attributes[:left] || 0
  end
end