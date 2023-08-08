require 'rails_helper'

RSpec.describe RepositoryReportProcessor, type: :model do
  context "repository report process" do
    it "populate database with user and repository information" do
      VCR.use_cassette("github_public_repositories") do
        username = 'renanoronfle'
        described_class.execute(username)
        expect(User.first.username).to eql(username)
        expect(Repository.all).to_not be_empty
      end
    end
  end
end
