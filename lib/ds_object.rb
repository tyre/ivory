## TODO: Make sure ids dont clash
require "./lib/helper_modules/default"

class DSObject
  defaults :id => unique_id, :hidden => false, :location => 
    Location.new(:left => 0, :top => 0), :events => []
  attr_accessor :title, :dir, :lang, :access_key, :tab_index,

  def initialize(attributes={location: })
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
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