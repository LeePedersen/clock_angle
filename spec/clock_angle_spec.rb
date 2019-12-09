require('rspec')
require('pry')
require('clock_angle')

describe('#clock_angle') do
  it('returns 0 if time = 12') do
    expect(clock_angle("12:00")).to(eq(0))
  end
  it('returns 30 if time = 1') do
    expect(clock_angle("1:01")).to(eq(30))
  end
  it('returns 180 if time = 6:00') do
    expect(clock_angle('6:00')).to(eq(180))
  end
  it('returns 45 if time = 12:03') do
    expect(clock_angle('1:55')).to(eq(90))
  end
end
