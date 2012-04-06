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