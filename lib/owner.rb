class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes:[], dogs:[], cats:[]}
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs][0].mood= "happy"
  end

  def play_with_cats
    pets[:cats][0].mood= "happy"
  end

  def feed_fish
    pets[:fishes][0].mood= "happy"
  end

  def sell_pets
    pets.each do |pet, array|
          array.each do |obj|
            obj.mood = "nervous"
          end
        end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
