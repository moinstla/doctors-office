require('spec_helper')

describe(Doctor) do
  describe('#==') do
    it('is the same doctor if it has the same name') do
      doctor1 = Doctor.new({:name => 'Michael', :specialty => 'Pediatrics', :id => nil})
      doctor2 = Doctor.new({:name => 'Michael', :specialty => 'Pediatrics', :id => nil})
        expect(doctor1 == doctor2).to(eq(true))
    end
  end

  describe('#name') do
    it('returns the name of the doctor') do
      doctor1 = Doctor.new({:name => 'Michael', :specialty => 'Pediatrics', :id => nil})
      expect(doctor1.name).to(eq('Michael'))
    end
  end

  describe('#specialty') do
    it('returns the specialty of the doctor') do
      doctor1 = Doctor.new({:name => 'Michael', :specialty => 'Pediatrics', :id => nil})
      expect(doctor1.specialty).to(eq('Pediatrics'))
    end
  end

  describe('#id') do
    it('returns the id of the doctor') do
      doctor1 = Doctor.new({:name => 'Michael', :specialty => 'Pediatrics', :id => nil})
      doctor1.save
      expect(doctor1.id).to(be_an_instance_of(Fixnum))
    end
  end

  describe(".all") do
    it('starts off with no doctors') do
      expect(Doctor.all).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a doctor to the doctors array") do
      doctor1 = Doctor.new({:name => 'Michael', :specialty => 'Pediatrics', :id => nil})
      doctor1.save
      expect(Doctor.all).to(eq([doctor1]))
    end
  end
end
