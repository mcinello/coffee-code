class Cat

  def initialize(name)
    @name = name
    @rested = true
    @entertained = false
    @adopted = false
    @fed = false
  end

  def is_happy?
    if @fed && @rested && @entertained && @adopted
      return true
    else
      return false
    end
  end

    def play
      @rested = false
      @entertained = true
    end

    def pet
      if is_happy?
        return "purr"
      else
        return "hiss"
      end
    end

    def adopt
      @adopted = true
    end

    def eat
      @fed = true
    end

    def sleepy_time
      @rested = true
    end

end

fluffy = Cat.new("fluffy")

p fluffy.is_happy?

fluffy.play
fluffy.adopt
fluffy.eat
fluffy.sleepy_time

p fluffy.pet
