require 'spec_helper'

try_spec do

  require './spec/fixtures/network_node'

  describe Ardm::Fixtures::NetworkNode do
    describe 'with UUID set as UUID object' do
      before :each do
        @uuid_string = 'b0fc632e-d744-4821-afe3-4ea0701859ee'
        @uuid        = UUIDTools::UUID.parse(@uuid_string)
        @resource    = Ardm::Fixtures::NetworkNode.new(:uuid => @uuid)

        expect(@resource.save).to be(true)
      end

      describe 'when reloaded' do
        before :each do
          @resource.reload
        end

        it 'has the same UUID string', pending: true do
          expect(@resource.uuid.to_s).to eq(@uuid_string)
        end

        it 'returns UUID as an object', pending: true do
          expect(@resource.uuid).to be_an_instance_of(UUIDTools::UUID)
        end
      end
    end

    describe 'with UUID set as a valid UUID string' do
      before :each do
        @uuid  = 'b0fc632e-d744-4821-afe3-4ea0701859ee'
        @resource = Ardm::Fixtures::NetworkNode.new(:uuid => @uuid)
        expect(@resource.save).to be(true)
      end

      describe 'when reloaded' do
        before :each do
          @resource.reload
        end

        it 'has the same UUID string', pending: true do
          expect(@resource.uuid.to_s).to eq(@uuid)
        end

        it 'returns UUID as an object', pending: true do
          expect(@resource.uuid).to be_an_instance_of(UUIDTools::UUID)
        end
      end
    end

    describe 'with UUID set as invalid UUID string' do
      before :each do
        @uuid  = 'meh'
        @operation = lambda do
          Ardm::Fixtures::NetworkNode.new(:uuid => @uuid)
        end
      end

      describe 'when assigned UUID' do
        it 'raises ArgumentError', pending: true do
          expect(@operation).to raise_error(ArgumentError, /Invalid UUID format/)
        end
      end
    end

    describe 'with UUID set as a blank string' do
      before :each do
        @uuid  = ''
        @operation = lambda do
          Ardm::Fixtures::NetworkNode.new(:uuid => @uuid)
        end
      end

      describe 'when assigned UUID' do
        it 'raises ArgumentError', pending: true do
          expect(@operation).to raise_error(ArgumentError, /Invalid UUID format/)
        end
      end
    end

    describe 'with missing UUID' do
      before :each do
        @uuid  = nil
        @resource = Ardm::Fixtures::NetworkNode.new(:uuid => @uuid)
        expect(@resource.save).to be(true)
      end

      describe 'when reloaded' do
        before :each do
          @resource.reload
        end

        it 'has no UUID' do
          expect(@resource.uuid).to be_nil
        end
      end
    end
  end
end
