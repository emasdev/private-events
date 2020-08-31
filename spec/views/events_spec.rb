require 'rails_helper.rb'

describe 'the create events process', type: :feature do
  before :each do
    @test_user = User.create(name: 'Emanuel')
    @test_event = Event.create(title: 'My first event', date: "2020-10-26 20:39:00", local: "Mexico", description: "Something will happen here", creator_id: "#{@test_user.id}")
  end

    
  describe 'Show event attributes in events list' do
    before :each do
      visit '/events'
    end  
    it 'has title' do expect(page).to have_content "#{@test_event.title}" end
    it 'has date' do expect(page).to have_content "#{@test_event.date}" end
    it 'has local' do expect(page).to have_content "#{@test_event.local}" end
    it 'has description' do expect(page).to have_content "#{@test_event.description}" end
  end

  describe 'Show event attributes in event detail view' do
    before :each do
      visit "/events/#{@test_event.id}"
    end  
    it 'has title' do expect(page).to have_content "#{@test_event.title}" end
    it 'has date' do expect(page).to have_content "#{@test_event.date}" end
    it 'has local' do expect(page).to have_content "#{@test_event.local}" end
    it 'has description' do expect(page).to have_content "#{@test_event.description}" end
    it 'has creator name' do expect(page).to have_content "#{@test_user.name}" end
  end

  
end
