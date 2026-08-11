# frozen_string_literal: true

# rubocop:disable-next RSpec/DescribeClass, Style/CaseEquality
RSpec.describe 'Set#===' do
  it 'tests for inclusion' do
    expect(Set[1, 2, 3] === 2).to be true
  end
end
