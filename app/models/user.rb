class User
  attr_accessor :github

  def initialize(github)
    self.github = github
  end


  def repos
    self.github.repos.list(:org => $organization)
  end

  def repo(name)
    Repo.new self.github, name
  end
end
