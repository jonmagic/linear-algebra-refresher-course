require_relative "./test_helper"

test "Vector[7.887, 4.138].inner_product(Vector[-8.802, 6.776])" do
  assert_equal Vector[7.887, 4.138].inner_product(Vector[-8.802, 6.776]),
    Larc::Vector[7.887, 4.138].inner_product(Larc::Vector[-8.802, 6.776])
end

test "Vector[-5.955, -4.904, -1.874].inner_product(Vector[-4.496, -8.755, 7.103])" do
  assert_equal Vector[-5.955, -4.904, -1.874].inner_product(Vector[-4.496, -8.755, 7.103]),
    Larc::Vector[-5.955, -4.904, -1.874].inner_product(Larc::Vector[-4.496, -8.755, 7.103])
end

test "Vector[3.183, -7.627].angle_with(Vector[-2.668, 5.319])" do
  assert_equal Vector[3.183, -7.627].angle_with(Vector[-2.668, 5.319]),
    Larc::Vector[3.183, -7.627].radians(Larc::Vector[-2.668, 5.319])
end

test "Vector[7.35, 0.221, 5.188].degrees(Vector[2.751, 8.259, 3.985])" do
  assert_equal (Vector[7.35, 0.221, 5.188].angle_with(Vector[2.751, 8.259, 3.985]) * (180 / Math::PI)),
  Larc::Vector[7.35, 0.221, 5.188].degrees(Larc::Vector[2.751, 8.259, 3.985])
end
