class IssuesController < ApplicationController
  def index
    logger.debug session.to_json
  end
end
