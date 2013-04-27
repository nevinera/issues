class Project
  attr_accessor :data

  def initialize(proj)
    self.data = proj
  end

  def self.all(github)
    github.repos.all
  end

  def each(&block)
    self.all.each(&block)
  end
end
