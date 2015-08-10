require('rspec')
require('triangles')

describe(Triangles) do
  describe('#equilateral?') do
    it('returns true if it has three equal sides') do
      new_equilateral = Triangles.new(2, 2, 2)
      expect(new_equilateral.equilateral?()).to(eq(true))
    end
  end
end
