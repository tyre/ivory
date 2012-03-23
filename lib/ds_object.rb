## TODO: Make sure ids dont clash
class DSObject
  attr_accessor :id, :size, :hidden, :location

  def initialize(attributes={})
    @id = attributes[:id]
  end

  def id
    @id = @id || unique_id
  end

  private

  def unique_id
    (0...12).map{65.+(rand(25)).chr}.join.downcase
  end
end