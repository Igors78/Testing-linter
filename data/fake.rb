module Enumerable 
  def my_each
    return to_enum (:my_each) unless block_given?

    arr=self
    arr = arr.to_a if arr.instance_of?(Range)
    arr = arr.to_a if arr.instance_of?(Hash)
! 
    size.times do |index|
      yield arr[index ]
    end*
    self
  end
