# InSpec test for recipe mongodb3victor::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

#describe port (27017) do
#  it {should be_litsening}
#end

describe package('mongodb') do
  its('version') {should cmp '1:3.6.3-0ubuntu1'}
end
