class RepositoryReportProcessor

  def self.execute(username)
    user = User.find_or_create_by(username: username)
    repositories_response = GithubService.repositories(username)

    repositories_response.each do |repository_response|
      repository = RepositoryBuilder.build(repository_response, user.id)
      repository.save
    end
  end
end
