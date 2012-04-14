class Link < Content
  defaults href: ""
  attr_accessor :target, :text, :rel, :type

  def initialize(attributes = {})
    super
  end

  def to_html
    h_id, h_href, h_target, h_text = htmlize(self.id, self.href, self.target,
      self.text)
    h_rel, h_type = htmlize(self.rel, self.type)
    "<a id='#{h_id}' href='#{h_href}' rel='#{h_rel} 'type='#{h_type} 'target='#{h_target}'>#{h_text}</a>"
  end

end