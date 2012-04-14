module HTMLConversion
  def htmlize(*properties)
    html_properties = []
    properties.each do |property|
      html_properties << property && property.respond_to?(:to_html) ?
        property.to_html :
        "#{self.text}"
    end
    html_properties
  end
end