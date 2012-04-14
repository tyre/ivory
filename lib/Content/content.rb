class Content < DSObject
  defaults color: "Black", font: "Helvetica, Arial", size: "16"

  def initialize(attributes = {})
    super
  end

  def to_css

    "
      font-size: #{size}px;
      font-family: '#{font}';
      color: #{color};
    "
  end

end