class Diamond
  def print_diamond letter
    letters = ("A"..letter).to_a
    lines = letters.each_with_index.map {|l, i| line_for l, i, letters.size }
    (lines + lines.reverse[1..-1]).join "\n"
  end

  private

  def line_for letter, index, size
    indent = size - index - 1
    return " " * indent + letter if index.zero?
    " " * indent + letter + " " * gap_for(index) + letter
  end

  def gap_for index
    index * 2 - 1
  end
end
