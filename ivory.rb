require './lib/ds_object'
require './lib/Content/content'
require './lib/Content/button'
require './lib/Content/textbox'
require './lib/Content/label'
require './lib/Content/link'
require './lib/Group/group'
require './lib/Group/form'
require './lib/Group/input'
require "./lib/Utility/class_methods"

class Ivory
  
  attr_with_default :items, []

  def add(*new_items)
    self.items += new_items
  end

  def compile_html
    html = ''

    self.items.each do |item|
      html += item.compile_html + "\n"
    end
    html
  end

  def compile_css
    css = ''
    self.items.each do |item|
      css += item.compile_css + "\n"
    end
    css
  end

  def output
    File.open("output.html", "w") do |f|
      f.write "<html>
  <head>
    <style>
      #{compile_css}
    </style>
  </head>
  <body>
    #{compile_html}
  </body>
</html>
      "
    end
  end

end

d = Ivory.new
b = Button.new :label => "Good it worked", :color => 'red'
b1 = Button.new :label => "Test it worked", :font => 'verdana'
t = TextBox.new :value => "cool :D"
l = Label.new :text => "Great", :color => 'red'
lk = Link.new :text => "Boo", :color => 'red'

f = Form.new
f.add_input(Input.new(:label => "Awesome"))

d.add(b, b1, l, f, f)

puts d.compile_html
puts d.compile_css

d.output