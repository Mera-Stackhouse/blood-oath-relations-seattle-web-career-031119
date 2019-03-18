class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def cults
    followers_oaths = BloodOath.all.select{|oath| oath.follower == self}
    followers_oaths.collect{|oath| oath.cult}
  end

  def join_cult(cult)
    initiation_date = Time.now.strftime("%Y-%m-%d")
    BloodOath.new(self, cult, initiation_date)
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    @@all.select {|follower| follower.age >= age}
  end
end
