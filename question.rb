class Question

  def initialize
    @num_one = rand(20)
    @num_two = rand(20)
  end

  def ask
    "What does #{@num_one} plus #{@num_two} equal?"
  end

  def sum
    @num_one + @num_two
  end

end