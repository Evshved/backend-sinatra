class Equation
  def linear(k,b)
    @linear_output = LinearEquation.new(k,b)
    p @linear_output.roots
  end

  def quadratic(a,b,c)
    @quadratic_output = QuadraticEquation.new(a,b,c)
    p @quadratic_output.roots
  end
end
# process один метод
