# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
    if a <= 0 and b <= 0 and c <= 0
        raise TriangleError
    end

    if a + b <= c or a + c <= b or b + c <= a
        raise TriangleError
    end

    if a == b and a == c
        return :equilateral
    end

    if (a == b and (not a == c)) or (a == c and (not a == b))
        return :isosceles
    end
    if (b == c and (not b == a)) or (b == a and (not b == c))
        return :isosceles
    end
    if (c == a and (not c == b)) or (c == b and c != a)

        return :isosceles
    end

    return :scalene

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
