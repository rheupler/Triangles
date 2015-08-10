require('rspec')
require('triangles')

describe(Triangles) do
  describe('#kind?') do
    it('returns equilateral if it has three equal sides') do
      new_equilateral = Triangles.new(2, 2, 2)
      expect(new_equilateral.kind?()).to(eq('equilateral'))
    end
  end
end

describe(Triangles) do
  describe('#kind?') do
   it('returns isosceles if 2 side are equal') do
     new_isosceles = Triangles.new(1, 3, 3)
     expect(new_isosceles.kind?()).to(eq('isosceles'))
   end
  end
end

describe(Triangles) do
  describe('#kind?') do
    it('returns scalene if no sides are equal') do
      new_scalene = Triangles.new(1, 2, 3)
      expect(new_scalene.kind?()).to(eq('scalene'))
    end
  end
end
