class Image < Media

  attr_accessor :source, :dimensions. :caption, :width, :height
  defaults alt_text: "", title:, caption: nil

  def initialize(attributes={})
    define_attributes(attributes)
    @size = [0]
  end

  def dimensions
    if @width == nil || @height == nil,
      nil
    else
      "#{width} #{height}"
    end
  end

  def figcaption
    if @caption
      "<p><figcaption>'#{capiton}'</figcaption></p>"
    end
  end

  def to_css
    " ##{id} { width= '#{width}' height= '#{height}' alt= '#{alt_text}' title= '#{title}' } "
  end

  def to_html
    "<img src= '#{source}' alt= '#{alt_text}' title= '#{title}' #{dimensions}' /> "
    figcaption
  end

end