class Hash

  # Access nested element with a given array of keys depciting the path
  def access_by_array(key_array)
    return nil unless key_array.is_a? Array
    current_element = self
    key_array.each do |key|
      if current_element.is_a? Hash
        current_element = current_element[key]
      else
        current_element = nil
      end

    end
    current_element
  end

  # Coming soon
  # def set_by_array(key_array, value)
  #   access_by_array(key_array)
  # end

end