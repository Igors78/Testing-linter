   require_relative 'helpers' 


module Enumerable
  def my_each
    return to_enum(:my_each) unless block_given?

    arr = self
    arr = arr.to_a if arr.instance_of?(Range)
    arr = arr.to_a if arr.instance_of?(Hash)

    size.times do |index|
      yield arr[index]
    end
    self
  end

  def my_each_with_index
    return to_enum(:my_each_with_index) unless block_given?

    arr = *self
    size.times do |index|
      yield arr[index], index
    end
    self
  end

