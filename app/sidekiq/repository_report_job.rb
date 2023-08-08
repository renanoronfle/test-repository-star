class RepositoryReportJob
  include Sidekiq::Job
  queue_as :default

  def perform(username)
    RepositoryReportProcessor.execute(username)
  end
end
