class XmlController < ApplicationController

  def index
    @n = params[:n].to_i
    res= resultm(@n)
    data = if res.nil?
             { message: "Неверные параметры запроса (значение = #{@n})" }
           else
             res.map { |elem| { ind: res.index(elem) + 1, elem: elem } }
           end
    respond_to do |format|
      format.xml { render xml: data.to_xml }
      format.rss { render xml: data.to_xml }
    end
  end

  protected

  private


  def resultm(n)
    @marsen_array = []
    p = (1..n).select { |x| (1..x).select { |y| (x % y).zero? }.size == 2 }
    @marsen_array = p.find_all{ |x| 2**x - 1 <= n }.map{ |y| 2**y -1 }
    @quantity = @marsen_array.size
    @marsen_array
  end

end
