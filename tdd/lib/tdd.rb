class Array
    def my_uniq
        result = {}
        self.map{|el| result[el] = true}
        result.keys
    end

    def pair_sum
    result = []
    self.each_with_index do |el, i|
      pair = - el
      self.each_with_index do |other_el, j|
        if other_el == pair && !result.include?([j, i]) && i!=j
          result << [i, j]
        end
      end
    end
    result
  end
end