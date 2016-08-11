require_relative './equation'

class LinearEquation < Equation
  def initialize(k, b)
    @k = k
    @b = b
  end

  def roots
    return [] if @k == 0
    -@b / @k
  end
end

