require './lib/ds_object'
require './lib/Content/content'
require './lib/Content/button'
require './lib/Content/textbox'
require './lib/Content/label'
require './lib/Content/link'

class Ivory
  
  attr_accessor :items

  def initialize
    @items = []
  end

  def add(*items)
    @items = @items | items
  end

  def compile_html
    html = ''
    @items.each do |item|
      html += item.compile_html + "\n"
    end
    html
  end

  def compile_css
    css = ''
    @items.each do |item|
      css += item.compile_css + "\n"
    end
    css
  end

end

d = Ivory.new
b = Button.new :label => "Good it worked", :color => '#000'
b1 = Button.new :label => "Test it worked", :font => 'verdana'
t = TextBox.new :value => "cool :D"
l = Label.new :text => "Great"
lk = Link.new :text => "Boo"

d.add(b, b1, lk)

puts d.compile_html
puts d.compile_css