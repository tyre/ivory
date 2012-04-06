require "./lib/Utility/class_methods"

class Location
  include ClassMethods
  defaults top: 0, left: 0, type: "absolute"

  def initialize(attributes={})
    define_attributes(attributes)
  end

  def to_css
    "
    ##{id} {
    position: #{type};
    }
    "
  end

  def to_js
    "
    <script src='http://code.jquery.com/jquery-latest.js'></script>
    "
  end

  def to_html
    "
    <script>
    $('##{id}').offset({ top: #{top}, left: #{left} });
    </script>
    "
  end
end