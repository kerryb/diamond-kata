require "diamond"

describe Diamond do
  it "just prints A on its own" do
    expect(subject.print_diamond "A").to eq "A"
  end

  it "prints a diamond for B" do
    expect(subject.print_diamond "B").to eq "\
 A
B B
 A"
  end
end
