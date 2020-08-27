require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(name: 'Anything',
                        user_id: 1)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).to_not be_valid
  end
end
