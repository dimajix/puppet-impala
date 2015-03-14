require 'spec_helper'
describe 'impala' do

  context 'with defaults for all parameters' do
    it { should contain_class('impala') }
  end
end
