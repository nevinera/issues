class User
  attr_accessor :github

  def initialize(github)
    self.github = github
  end


  def repos
    self.github.repos.list(:org => $organization)
  end
end
