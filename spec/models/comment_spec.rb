require "spec_helper"

describe Comment do

  describe "validations" do
    it { should validate_presence_of :content}
  end

  describe "mass assignments" do
    it { should allow_mass_assignment_of :content }
  end  

end