# union linear & quadratic solving
class Equation
  def solving_equation
    @status = params[:check].to_s
    check_for_type
    json result: @data.to_s
  end

  def check_for_type
    return input_linear if @status == 'linear'
    input_quadratic if @status == 'quadratic'
  end

  private

  def input_linear
    @data = linear(params[:firstlin].to_f, params[:secondlin].to_f)
  end

  def input_quadratic
    @data = quadratic(
      params[:firstqua].to_f, params[:secondqua].to_f,
      params[:thirdqua].to_f
    )
  end

  def linear(k, b)
    @linear_output = LinearEquation.new(k, b)
    @linear_output.roots
  end

  def quadratic(a, b, c)
    @quadratic_output = QuadraticEquation.new(a, b, c)
    @quadratic_output.roots
  end
end
