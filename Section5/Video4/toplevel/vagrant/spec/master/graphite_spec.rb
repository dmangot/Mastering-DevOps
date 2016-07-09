require 'spec_helper'

describe package('graphite-web') do
  it { should be_installed }
end

describe package('graphite-carbon') do
  it { should be_installed }
end

# What About the carbon cache listener?
#describe port(80) do
#  it { should be_listening }
#end

# What about the carbon-cache process?
