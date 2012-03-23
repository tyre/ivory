class Location
  attr_accessor :top, :left, :type

  def initialize(attributes={})
    @top = attributes[:top] || 0
    @left = attributes[:left] || 0
    @type = attributes[:type] || "absolute"
  end
end