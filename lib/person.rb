class Person

  def initialize attributes
    attributes.each_key do |key|
      self.class.attr_accessor(key)
      self.send("#{key}=", attributes[key])
    end
  end
end
