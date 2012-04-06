require "./group.rb"

class List < Group
  attr_accessor :header, :bullet_style, :bullet
  defaults items: []

  def initialize(attributes= {})
    super
  end

  def add_items(items, position=-1)
    @items.insert(position, *items)
  end

  def to_html
    header_html = header.respond_to?(:to_html) ? header.to_html : header
    html = "<h1>#{header_html}</h1><ul>"
    items.each do |item|
      item_html = item.respond_to?(:to_html) ? item.to_html : item
      html += "<span class=\"#{self.id}\">#{bullet}</span> <li>#{item_html}</li></br>"
    end
    html += "</ul>"
  end

  def to_css
    font_family = header.respond_to?(:font) && not header.font.nil? ?
                  header.font : 'Helvetica'


    "
      ##{id}{
        h1 {font-family:#{font_family}
            font-weight: #{header.font ? header.font : 'Helvetica'}




      }
    "
  end
end