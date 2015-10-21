require 'spec_helper'

describe 'Dog' do
  it 'is defined within lib/dog.rb' do
    expect(defined?(Dog)).to be_truthy
    expect(Dog).to be_a(Class)
  end

  context 'with names' do
    describe '#name=' do
      it 'writes the name of the dog to an instance variable @name' do
        fido = Dog.new
        fido.name = "Fido"

        expect(fido.instance_variable_get(:@name)).to eq("Fido")
      end
    end

    describe '#name' do
      it 'reads the name of the dog from an instance variable @name' do
        fido = Dog.new
        fido.instance_variable_set(:@name, "Fido")

        expect(fido.name).to eq("Fido")
      end
    end
  end

  context 'with breeds' do
    describe '#breed=' do
      it 'writes the breed of the dog to an instance variable @breed' do
        snoopy = Dog.new
        snoopy.breed = "Beagle"

        expect(snoopy.instance_variable_get(:@breed)).to eq("Beagle")
      end
    end

    describe '#breed' do
      it 'reads the breed of the dog from an instance variable @breed' do
        snoopy = Dog.new
        snoopy.instance_variable_set(:@breed, "Beagle")

        expect(snoopy.breed).to eq("Beagle")
      end
    end
  end
end

describe 'Person' do
  it 'is defined within lib/person.rb' do
    expect(defined?(Person)).to be_truthy
    expect(Person).to be_a(Class)
  end

  context 'with names' do
    describe '#name=' do
      it 'writes the name of the person to an instance variable @name' do
        beyonce = Person.new
        beyonce.name = "Beyonce"

        expect(beyonce.instance_variable_get(:@name)).to eq("Beyonce")
      end
    end

    describe '#name' do
      it 'reads the name of the person from an instance variable @name' do
        beyonce = Person.new
        beyonce.instance_variable_set(:@name, "Beyonce")

        expect(beyonce.name).to eq("Beyonce")
      end
    end
  end

  context 'with jobs' do
    describe '#job=' do
      it 'writes the job of the person to an instance variable @job' do
        beyonce = Person.new
        beyonce.job = "Singer"

        expect(beyonce.instance_variable_get(:@job)).to eq("Singer")
      end
    end

    describe '#job' do
      it 'reads the job of the person from an instance variable @job' do
        beyonce = Person.new
        beyonce.instance_variable_set(:@job, "Singer")

        expect(beyonce.job).to eq("Singer")
      end
    end
  end
end
