class Repo
  attr_accessor :name, :github

  def initialize(github, name)
    self.github = github
    self.name = name
  end

  def issues
    binding.pry
    self.github.issues.list({
      :user => $organization,
      :repo => self.name,
      :filter => 'all',
      :per_page => 100})
  end
end
