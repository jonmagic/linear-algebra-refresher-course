require_relative "./test_helper"

test "Vector[8.218, -9.341] + Vector[-1.129, 2.111]" do
  assert_same_vector (Vector[8.218, -9.341] + Vector[-1.129, 2.111]),
    (Larc::Vector[8.218, -9.341] + Larc::Vector[-1.129, 2.111])
end

test "Vector[7.119, 8.215] - Vector[-8.223, 0.878]" do
  assert_same_vector Vector[7.119, 8.215] - Vector[-8.223, 0.878],
    Larc::Vector[7.119, 8.215] - Larc::Vector[-8.223, 0.878]
end

test "Vector[1.671, -1.012, -0.318] * 7.41" do
  assert_same_vector Vector[1.671, -1.012, -0.318] * 7.41,
    Larc::Vector[1.671, -1.012, -0.318] * 7.41
end
