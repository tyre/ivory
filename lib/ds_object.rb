## TODO: Make sure ids dont clash
class DSObject
  attr_accessor :id, :size, :hidden, :location, :title, :dir, :lang,
  :access_key, :tab_index, :events

  def initialize(attributes={location: })
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @id ||= attributes[:id]
    @location ||= Location.new(:left => 0, :top => 0)
    @hidden ||= false
    @events ||= []
  end

  def define_attributes(hash)
    attr_hash.each do |attribute, value|
      if respond_to?("#{attribute}=")
        send("#{attribute}=",value)
      end
    end
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