require "array_transitions/version"

class Array
  def transitions
    t = self.map.with_index do |e, i|
      next if self.size == i + 1

      next_element = self[i + 1]
      next if next_element == e

      { from: e, to: next_element }
    end

    t.compact
  end
end
