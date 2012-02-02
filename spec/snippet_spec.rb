require_relative "spec_helper"

describe Chef::Provider::TemplateSnippet do
  before do
    @provider = Chef::Provider::TemplateSnippet.new
  end

  it "should have tests"

end


describe Chef::Resource::TemplateSnippet do
  before do
    @resource = Chef::Resource::TemplateSnippet.new("test")
  end

  it "should have tests"

end
