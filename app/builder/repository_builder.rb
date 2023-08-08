class RepositoryBuilder
  def self.build(payload, user_id)
    repository = Repository.find_or_initialize_by(remote_id: payload['id'])
    repository.name = payload['name']
    repository.user_id =  user_id
    repository.stargazers_count = payload['stargazers_count']
    repository
  end
end
