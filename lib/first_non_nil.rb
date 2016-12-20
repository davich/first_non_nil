class Array
  def first_non_nil
    self.each do |element|
      result = block_given? ? yield(element) : element
      return result unless result.nil?
    end
  end
end
