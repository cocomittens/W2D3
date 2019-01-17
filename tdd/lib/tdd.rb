class Array
    def my_uniq
        result = {}
        self.map{|el| result[el] = true}
        result.keys
    end

    def two_sum
    result = []
    self.each_with_index do |el, i|
      pair = -el
      self.each_with_index do |other_el, j|
        if other_el == pair && !result.include?([j, i]) && i!=j
          result << [i, j]
        end
      end
    end
    result
  end

  def my_transpose
    result = Array.new(self.length){[]}
    self.each_index do |idx|
      self.each do |arr|
        result[idx] << arr[idx]
      end
    end
    result
  end
end

class TowersOfHanoi
  attr_accessor :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def play
    while !won?
      puts "What pile to move from? (1-3)"
      from = gets.chomp.to_i
      puts "What pile to move to? (1-3)"
      to = gets.chomp.to_i
      self.move(from-1, to-1)
      self.render
    end
  end

  def render
    puts "1: " + @towers[0].to_s
    puts "2: " + @towers[1].to_s
    puts "3: " + @towers[2].to_s
  end

  def won?
    if @towers[0].empty? && (@towers[1].empty? || @towers[2].empty?)
      puts ("You won!")
      return true
    else
      return false
    end
  end

  def valid_move?(from_tower, to_tower)
    if @towers[from_tower].empty?
      return false
    elsif @towers[to_tower].empty?
      return true
    elsif @towers[to_tower].last < @towers[from_tower].last
      return false
    else
      return true
    end
  end

  def move(from_tower, to_tower)
    if valid_move?(from_tower, to_tower)
      @towers[to_tower] << @towers[from_tower].pop()
    end
  end
end

class TowersOfHanoi
  attr_accessor :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def play
    while !won?
      puts "What pile to move from? (1-3)"
      from = gets.chomp.to_i
      puts "What pile to move to? (1-3)"
      to = gets.chomp.to_i
      self.move(from-1, to-1)
      self.render
    end
    puts ("You won!")
  end

  def render
    puts "1: " + @towers[0].to_s
    puts "2: " + @towers[1].to_s
    puts "3: " + @towers[2].to_s
  end

  def won?
    if @towers[0].empty? && (@towers[1].empty? || @towers[2].empty?)
      return true
    else
      return false
    end
  end

  def valid_move?(from_tower, to_tower)
    if @towers[from_tower].empty?
      return false
    elsif @towers[to_tower].empty?
        return true
    elsif @towers[to_tower].last < @towers[from_tower].last
        return false
    else
      return true
    end
  end

  def move(from_tower, to_tower)
    if valid_move?(from_tower, to_tower)
      @towers[to_tower] << @towers[from_tower].pop
    end
  end
end
