require_relative '../../13/lib/factorial.rb'

class Pascal
  def triangle_row(max)
    for i in 0..max
      yield(max.factorial / i.factorial * (max - i).factorial)
    end
  end

  def draw_triangle(row)
    return "Values must be greater than 1" if row <= 1
    count = 0
    while(count <= row)
      # print count
      triangle_row(count) { |x| yield(x) }
      count += 1
    end
  end
end