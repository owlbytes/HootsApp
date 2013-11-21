require "spec_helper"

describe Post do

  describe "validations" do
    it { should validate_presence_of :content}
  end

  describe "mass assignment" do
    it { should allow_mass_assignment_of :content }
    it { should allow_mass_assignment_of :image }
  end

end

