# InSpec test for recipe mongodb3victor::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe port(27017) do
  it {should be_listening}
end

describe package('mongodb') do
  it {should be_installed}
  its('version') {should cmp '1:3.6.3-0ubuntu1'}
  its('version'){should match /3\./}
end

describe service 'mongodb' do
  it {should be_running}
  it {should be_enabled}
end


#Check Service and Package
