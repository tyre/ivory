## TODO: Make sure ids dont clash
require "./lib/Utility/class_methods"
require "./lib/location"
require "./lib/Utility/html_conversion"

class DSObject
  include HTMLConversion
  include ClassMethods
  defaults hidden: false, location: Location.new, events: []
  attr_accessor :title, :dir, :lang, :access_key, :tab_index, :id

  def initialize(attributes={})
    define_attributes(attributes) 
    self.id ||= DSObject.unique_id
  end

  def to_css
  end

  def to_html
  end

  def compile_css
    "
    ##{self.id} {
    #{to_css}
    }
    "
  end

  def compile_html
    to_html
  end

  def self.unique_id
    (0...12).map{65.+(rand(25)).chr}.join.downcase
  end
end