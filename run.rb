require './ivory'

d = Ivory.new
b = Button.new :label => "Good it worked", :color => 'red'
b1 = Button.new :label => "Test it worked", :font => 'verdana'
t = TextBox.new :value => "cool :D"
l = Label.new :text => "Great", :color => 'red'
lk = Link.new :text => "Boo", :color => 'red'

f = Form.new
f.add_input(Input.new(:label => "Awesome"))

d.add(b)

d.output