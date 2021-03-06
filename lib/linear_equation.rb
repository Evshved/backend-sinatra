# solve linear equation
class LinearEquation < Equation
  def initialize(k, b)
    @k = k
    @b = b
  end

  def roots
    return 'Answer: no roots' if @k.zero?
    @answer = -@b / @k
    "Answer: #{@answer}"
  end
end
