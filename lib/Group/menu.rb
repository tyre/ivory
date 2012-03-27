require "./group.rb"

class Menu < Group
  attr_accessor :items, :header
  def initialize
    @items = []
  end

  def add_items(items, position=-1)
    @items.insert(position, *items)
  end

  def to_html
    header_html = header.respond_to?(:to_html) ? header.to_html : header
    html = "<div><h1>#{header_html}</h1>"
    items.each do |item|
      item_html = item.respond_to?(:to_html) ? item.to_html : item
      html += "<p>#{item_html}</p></br>"
    end
    html += "</div>"
  end
end