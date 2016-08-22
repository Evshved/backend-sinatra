class LinearEquation < Equation
  def initialize(k, b)
    @k = k
    @b = b
  end

  def roots
    return 'Answer: no roots' if @k == 0
    @answer = -@b / @k
    "Answer: #{@answer}"
  end
end
