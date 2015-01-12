class Diamond
  def print_diamond letter
    letters = ("A"..letter).to_a
    max_gap = letters.size - 1
    lines = letters.each_with_index.map {|l, i| line_for l, max_gap - i, i }
    (lines + lines.reverse[1..-1]).join "\n"
  end

  private def line_for letter, indent, gap
    return " " * indent + letter if gap.zero?
    " " * indent + letter + " " * gap + letter
  end
end
