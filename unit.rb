class Unit

  attr_accessor :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy_unit)
    enemy_unit.damage(self.attack_power)
  end

  def damage(attack_power)
    self.health_points -= attack_power
  end

end