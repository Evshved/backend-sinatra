require_relative './equation'

class QuadraticEaquation < Equation
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def roots
    return [] if discriminant < 0
    return [-@b / (2 * a)] if discriminant == 0

    sqrt = Math.sqrt(discriminant)
    [-@b + sqrt, -@b - sqrt].map { |item| item / (2 * a) }
  end

  private

  def discriminant
    @discriminant ||= @b**2 - 4 * @a * @c
  end
end
