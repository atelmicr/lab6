# main controller
class MainController < ApplicationController
  before_action :parse_params, only: :output
  def index; end

  def parse_params
    @n = params[:n].to_i
  end

  def add_record_to_table
    res = MarsDb.create marsarr: @marsen_array, marsquan: @quantity
    @result << ActiveSupport::JSON.decode(res.marsarr)
    @result << ActiveSupport::JSON.decode(res.marsquan.to_s)
    res.save
  end

  def output
    @result = []
    if (res = MarsDb.find_by_marsarr_and_marsquan(@marsen_arr, @quantity))
      @result << ActiveSupport::JSON.decode(res.marsarr)
      @result << ActiveSupport::JSON.decode(res.marsquan.to_s)
    else
      result
      add_record_to_table
    end
  end

  def output_xml
    @result = MarsDb.all
    render xml: @result
  end

  def result
    n = params[:n].to_i
    @marsen_array = []
    p = (1..n).select { |x| (1..x).select { |y| (x % y).zero? }.size == 2 }
    @marsen_array = p.find_all{ |x| 2**x - 1 <= n }.map{ |y| 2**y -1 }
    @quantity = @marsen_array.size
  end

  def destroy_db
    MarsDB.destroy_all
    redirect_to destroy.erb
  end
end
