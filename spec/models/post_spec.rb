require "spec_helper"

describe Post do

  describe "#validations" do
    it { should validate_presence_of :content}
    it { should allow_mass_assignment_of :content }
    it { should allow_mass_assignment_of :image }
    it { should allow_mass_assignment_of :geostamp }
    it { should allow_mass_assignment_of :flag }
  end

end