class LabController < ApplicationController
  def input; end

  def output
    n = params[:n].to_i
    @mersenne_array = []
    p = (1..n).select { |x| (1..x).select { |y| (x % y) == 0 }.size == 2 }
    @mersenne_array = p.find_all{ |x| 2**x - 1 <= n }.map{ |y| 2**y -1 }
    @quantity = @mersenne_array.size
  end
end
