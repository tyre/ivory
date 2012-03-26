## TODO: Make sure ids dont clash
class DSObject
  attr_accessor :id, :size, :hidden, :location

  def initialize(attributes={})
    @id = attributes[:id]
    @location = attributes[:location] || Location.new(:left => 0, :top => 0)
    @hidden = attributes[:hidden] || false
  end

  def id
    @id = @id || unique_id
  end

  def compile_css
    "
    ##{id} {
      #{to_css}
    }
    "
  end

  def compile_html
    to_html
  end

  private

  def unique_id
    (0...12).map{65.+(rand(25)).chr}.join.downcase
  end
end