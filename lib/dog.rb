# Describes a dog
class Dog

### CLASS VARIABLES AND METHODS ###

  # class variables
  @@all = []

  # Class method to access variables
  def self.all
    @@all
  end

  # Class method to print all dogs
  def self.print_all
    self.all.each{|e| puts e.name} # puts each dog
  end

  # Class method to clear all dogs from all class variable
  def self.clear_all
    self.all.clear
  end

### INSTANCE VARIABLES AND METHODS ###

  # instance readrs and writers
  attr_accessor :name

  # default class constructor
  def initialize(name=nil)
    self.name = name
    self.save
  end

  # Push self onto the all class variable
  def save
    self.class.all << self
  end

end
