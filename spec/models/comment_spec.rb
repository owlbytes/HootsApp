require "spec_helper"

describe Comment do

  describe "#validations" do
    it { should validate_presence_of :content}
    it { should allow_mass_assignment_of :content }
    it { should allow_mass_assignment_of :flag }
  end

end