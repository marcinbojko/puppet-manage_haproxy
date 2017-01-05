require 'spec_helper'
describe 'manage_haproxy' do
  context 'with default values for all parameters' do
    it { should contain_class('manage_haproxy') }
  end
end
