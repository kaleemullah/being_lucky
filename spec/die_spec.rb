require_relative '../die'

RSpec.describe Die do
  describe "#score" do
    subject { Die.new(die, count).score }

    context "when triple 1" do
      let(:die) { 1 }
      let(:count) { 3 }
      
      it { should eq(1000) }
    end

    context "when triple 2" do
      let(:die) { 2 }
      let(:count) { 3 }
      
      it { should eq(200) }
    end

    context "when triple 3" do
      let(:die) { 3 }
      let(:count) { 3 }

      
      it { should eq(300) }
    end

    context "when triple 4" do
      let(:die) { 4 }
      let(:count) { 3 }
      
      it { should eq(400) }
    end
                        
    context "when triple 5" do
      let(:die) { 5 }
      let(:count) { 3 }
      
      it { should eq(500) }
    end

    context "when triple 6" do
      let(:die) { 6 }
      let(:count) { 3 }
      
      it { should eq(600) }
    end

    context "when single 1" do
      let(:die) { 1 }
      let(:count) { 1 }
      
      it { should eq(100) }
    end

    context "when single 5" do
      let(:die) { 5 }
      let(:count) { 1 }
      
      it { should eq(50) }
    end

    context "when single 2" do
      let(:die) { 2 }
      let(:count) { 1 }
      
      it { should eq(0) }
    end

    context "when single 3" do
      let(:die) { 3 }
      let(:count) { 1 }
      
      it { should eq(0) }
    end

    context "when single 4" do
      let(:die) { 4 }
      let(:count) { 1 }
      
      it { should eq(0) }
    end

    context "when single 6" do
      let(:die) { 6 }
      let(:count) { 1 }
      
      it { should eq(0) }
    end

    context "when double 1" do
      let(:die) { 1 }
      let(:count) { 2 }
      
      it { should eq(200) }
    end

    context "when quadruple 5" do
      let(:die) { 5 }
      let(:count) { 4 }
      
      it { should eq(550) }
    end
  end
end