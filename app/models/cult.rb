class Cult

  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def recruit_follower(follower_instance)
    initiation_date = Time.now.strftime("%Y-%m-%d")
    BloodOath.new(follower_instance, self, initiation_date)
  end

  def cult_population
    cults_oaths = BloodOath.all.select {|oath| oath.cult == self}
    cults_oaths.count
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|cult| cult.name  == name}
  end

  def self.find_by_location(location)
    @@all.find {|cult| cult.location  == location}
  end

  def self.find_by_founding_year(year)
    @@all.find {|cult| cult.founding_year  == year}
  end
end
