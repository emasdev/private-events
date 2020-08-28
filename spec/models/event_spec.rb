require 'rails_helper'

RSpec.describe Event, type: :model do
    let(:test_user) { User.create(id:99, name: 'Example User') }
    let(:subject) do
    described_class.new(title: 'Our Party',
                        id: 10,
                        description: 'Nice party of the team!',
                        date: '2020-08-27 16:32:43',
                        local: 'Mari House',
                        creator_id: 99)
    end


    describe 'validations' do

        it 'is not valid without creator id' do
            subject.creator_id = nil
            expect(subject).to_not be_valid
        end

        it 'is not valid with title length < 5' do
            subject.title = "part"
            expect(subject).to_not be_valid
        end

        it 'is not valid with missing date' do
            subject.date = nil
            expect(subject).to_not be_valid
        end
    end

    describe "associations" do
        it { should belong_to(:creator) }
        it { should have_many(:attendees)}
        it { should have_many(:event_attendings)}
    end

end

  
