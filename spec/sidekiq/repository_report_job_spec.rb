require 'rails_helper'
RSpec.describe RepositoryReportJob, type: :job do
  it 'called methods' do
    RepositoryReportProcessor.stub(:execute)
    subject.perform('renanoronfle')
    expect(RepositoryReportProcessor).to have_received(:execute).with("renanoronfle")
  end
end
