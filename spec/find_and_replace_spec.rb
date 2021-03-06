require('rspec')
require('./lib/find_and_replace')

describe('String#find_and_replace') do

  it("Takes a single word and replaces it with another specified word") do
      expect("cat".find_and_replace("cat","dog")).to(eq("dog"))
  end

  it("Takes two words and replaces specified whole word with a new specified word") do
      expect("robot parts".find_and_replace("parts","farts")).to(eq("robot farts"))
  end

  it("Takes two words and replaces all instances of the specified word with the new specified word") do
      expect("I work parttime".find_and_replace("part","fart")).to(eq("I work farttime"))
  end

  it("Takes two words and replaces all instances of the specified word with the new specified word without changing the case of the first letter") do
      expect("Catherine's cats".find_and_replace("cat","dog")).to(eq("Dogherine's dogs"))
  end

  it("Takes two words and replaces all instances of the specified word with the new specified word without changing the case of the first letter") do
      expect("McCatherine went to the store".find_and_replace("McCatherine", "dog")).to(eq("Dog went to the store"))
  end

end
