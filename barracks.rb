class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    food >= 2 && gold >= 135
  end

  def train_footman
    self.gold -= 135
    self.food -= 2

    if can_train_footman? == true
        footman = Footman.new
    end
  end

  def can_train_peasant?
    food >= 5 && gold >= 90
  end

  def train_peasant
    self.gold -= 90
    self.food -= 5
    if can_train_peasant? == true
      peasant = Peasant.new
    end
  end

end
