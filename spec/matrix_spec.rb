require "spec_helper"

RSpec.describe Matrix, "#rotate" do
  it "rotates 2x2 matrix" do
    matrix = [
      [1,2],
      [3,4]
    ]
    expected = [
      [3,1],
      [4,2]
    ]
    expect(Matrix.rotate(matrix)).to eql(expected)
  end

  it "rotates 3x3 matrix" do
    matrix = [
      [1,2,3],
      [4,5,6],
      [7,8,9]
    ]
    expected = [
      [7,4,1],
      [8,5,2],
      [9,6,3]
    ]

    expect(Matrix.rotate(matrix)).to eql(expected)
  end
end