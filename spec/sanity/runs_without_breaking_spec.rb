require 'tempfile'
require 'lib/scrubber'

RSpec.configure do |config|
  filename = Tempfile.new('order').path
  Scrubber.record_rspec_run(config, filename)
end

describe "silly group" do
  it "runs" do
  end

  describe "subgroups" do
    it "runs" do
    end
  end
end

