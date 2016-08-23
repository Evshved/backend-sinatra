# solve quadratic equation
class QuadraticEquation < Equation
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def roots
    return 'Answer: no roots' if discriminant < 0
    return "Answer: #{one_root}" if discriminant.zero?
    "Answer: #{two_roots}"
  end

  private

  def one_root
    (-@b / (2 * @a))
  end

  def two_roots
    [-@b + sqrt, -@b - sqrt].map { |item| item / (2 * @a) }
  end

  def sqrt
    Math.sqrt(discriminant)
  end

  def discriminant
    @discriminant ||= @b**2 - 4 * @a * @c
  end
end
