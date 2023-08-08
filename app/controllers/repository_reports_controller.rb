class RepositoryReportsController < ApplicationController

  def create
    RepositoryReportJob.perform_async(repository_report_params.fetch('username'))
    render status: 200
  end

  private
  
  def repository_report_params
    params.permit(:username)
  end
end
