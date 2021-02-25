class Car
  attr_reader :description,
              :year

  def initialize(params)
    @description = params[:description]
    @year        = params[:year]
  end

  def make
    @description.split[1]
  end

  def model
    @description.split[2]
  end

  def color
    @description.split[0]
  end

  def age
    2021 - @year.to_i
  end
end
