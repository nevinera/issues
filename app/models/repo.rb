class Repo
  attr_accessor :name, :github

  def initialize(github, name)
    self.github = github
    self.name = name
  end

  def issues
    []
  end
end
