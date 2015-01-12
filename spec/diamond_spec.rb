require "diamond"

describe Diamond do
  it "just prints A on its own" do
    expect(subject.print_diamond "A").to eq "A"
  end
end
