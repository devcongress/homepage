require 'spec_helper'

describe Volunteer do
  before :each do
    @zach = Volunteer.new(firstname: 'Zach', lastname: 'Holman', email_address: 'zach@zachholman.com', phone_number: '+1404302200201')
  end

  subject { @zach }

  it { should respond_to :firstname }
  it { should respond_to :lastname }
  it { should respond_to :email_address }
  it { should respond_to :phone_number }
  it { should respond_to :github }
  it { should respond_to :twitter }
  it { should respond_to :website }
  it { should respond_to :feedback }

  it { should be_valid }

  describe 'wrong ways to sign up as a volunteer' do
    it 'should not be valid without a firstname' do
      @zach.firstname = nil
      @zach.should_not be_valid
    end

    it 'should not be valid without a lastname' do
      @zach.lastname = nil
      @zach.should_not be_valid
    end

    it 'should not be valid without an email address' do
      @zach.email_address = nil
      @zach.should_not be_valid
    end

    it 'should not be valid without a phone number' do
      @zach.phone_number = nil
      @zach.should_not be_valid
    end
  end

end
