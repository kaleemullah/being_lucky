require_relative '../being_lucky'

RSpec.describe BeingLucky do
  describe "#score" do
    subject { BeingLucky.new(dice).score }

    context "when triple 1 and double 5" do
      let(:dice) { [1,1,1,5,5] }
      
      it { should eq(1100) }
    end

    context "when mixture of scoring and non scoring" do
      let(:dice) { [5,1,3,4,1] }
      
      it { should eq(250) }
    end

    context "when triple 2 and double 3" do
      let(:dice) { [2,2,2,3,3] }
      
      it { should eq(200) }
    end

    context "when single 2, 3, 4 and 6" do
      let(:dice) { [2,3,4,6] }
      
      it { should eq(0) }
    end    
  end
end