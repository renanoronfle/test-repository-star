class GithubService
  def self.repositories(username)
    JSON.parse RestClient.get("https://api.github.com/users/#{username}/repos").body
  end
end
