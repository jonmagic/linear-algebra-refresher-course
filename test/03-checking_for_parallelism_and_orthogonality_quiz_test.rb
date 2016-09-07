require_relative "./test_helper"

test "Larc::Vector[-7.579, -7.88].parallel(Larc::Vector[22.737, 23.64])" do
  assert_equal true,
    Larc::Vector[-7.579, -7.88].parallel(Larc::Vector[22.737, 23.64])
end

test "Larc::Vector[-7.579, -7.88].orthogonal(Larc::Vector[22.737, 23.64])" do
  assert_equal false,
    Larc::Vector[-7.579, -7.88].orthogonal(Larc::Vector[22.737, 23.64])
end

test "Larc::Vector[-2.029, 9.97, 4.172].parallel(Larc::Vector[-9.231, -6.639, -7.245])" do
  assert_equal false,
    Larc::Vector[-2.029, 9.97, 4.172].parallel(Larc::Vector[-9.231, -6.639, -7.245])
end

test "Larc::Vector[-2.029, 9.97, 4.172].orthogonal(Larc::Vector[-9.231, -6.639, -7.245])" do
  assert_equal false,
    Larc::Vector[-2.029, 9.97, 4.172].orthogonal(Larc::Vector[-9.231, -6.639, -7.245])
end

test "Larc::Vector[-2.328, -7.284, -1.214].parallel(Larc::Vector[-1.821, 1.072, -2.94])" do
  assert_equal false,
    Larc::Vector[-2.328, -7.284, -1.214].parallel(Larc::Vector[-1.821, 1.072, -2.94])
end

test "Larc::Vector[-2.328, -7.284, -1.214].orthogonal(Larc::Vector[-1.821, 1.072, -2.94])" do
  assert_equal true,
    Larc::Vector[-2.328, -7.284, -1.214].orthogonal(Larc::Vector[-1.821, 1.072, -2.94])
end

test "Larc::Vector[2.118, 4.827].parallel(Larc::Vector[0, 0])" do
  assert_equal true,
    Larc::Vector[2.118, 4.827].parallel(Larc::Vector[0, 0])
end

test "Larc::Vector[2.118, 4.827].orthogonal(Larc::Vector[0, 0])" do
  assert_equal true,
    Larc::Vector[2.118, 4.827].orthogonal(Larc::Vector[0, 0])
end
