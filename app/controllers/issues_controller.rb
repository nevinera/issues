class IssuesController < ApplicationController
  def index
    logger.debug session.to_json


    @commits = github.repos.all 'nevinera'
  end
end
