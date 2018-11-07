require "spec_helper"
RSpec.describe Stringer do
  it "Concatentates undefined number of strings with a space" do
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza", "Vazquez").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza Vazquez")
  end
  it "truncates a string if its length exceeds the parameter" do
    expect(Stringer.minify("Hello, I'm learning how to", 10)).to eq("Hello, I'm...")
  end
  it "splits string on whitespace and returns an array" do 
    expect(Stringer.replacify("Hello I am sam", 'sam', 'rob')).to eq("Hello I am rob")
  end
  it "splits string and returns array" do
    expect(Stringer.tokenize("Hello I am sam")).to eq(["Hello", "I", "am", "sam"])
  end
  it "removes instances of word from string" do
    expect(Stringer.removify("I am not a developer", "not")).to eq("I am a developer")
  end
end
