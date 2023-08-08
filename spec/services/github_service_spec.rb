require 'rails_helper'

RSpec.describe GithubService, type: :model do
  context "github repository requests" do
    it "list of public repositories by username" do
      VCR.use_cassette("github_public_repositories") do
        result = described_class.repositories('renanoronfle')
        expect(result.first['owner']['login']).to eql('renanoronfle')
      end
    end
  end
end

