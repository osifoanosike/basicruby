class Fixnum
  def fibonacci_sequence
    init1 = 1
    init2 = 1

    while init1 <= self
      yield init1

      temp = init1
      init1 = init2
      init2 = temp + init1
    end
  end
end