require "spec_helper"

describe User do

  describe "#validations" do
    it { should validate_presence_of :name}
    it { should validate_uniqueness_of :name}
    it { should validate_presence_of :email}
    it { should allow_mass_assignment_of :name }
    it { should allow_mass_assignment_of :image }
    it { should allow_mass_assignment_of :email }
    it { should allow_mass_assignment_of :role }
  end

end 