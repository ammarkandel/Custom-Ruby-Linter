require_relative './lib/check_methods'

describe 'test code' do
  include CheckMethods
  describe CheckMethods do
    describe '#check_line_long' do
      it 'expect check_line_long to return true' do
        @it_size = 90
        expect(check_line_long).to eql(true)
      end

      it 'expect check_line_long to return false' do
        @it_size = 40
        expect(check_line_long).to eql(false)
      end

      it 'expect check_line_long to return false' do
        @it_size = 80
        expect(check_line_long).to eql(false)
      end

      it 'expect check_line_long to return false' do
        @it_size = 0
        expect(check_line_long).to eql(false)
      end
    end
    describe '#check_space_end' do
      it 'expect check_space-end to return true' do
        @item_in = ' '
        expect(check_space_end).to eql(true)
      end

      it 'expect check_space_end to return true' do
        @item_in = '    '
        expect(check_space_end).to eql(true)
      end

      it 'expect check_space_end to return false' do
        @item_in = 'test'
        expect(check_space_end).to eql(false)
      end

      it 'expect check_space_end to return false' do
        @item_in = '123'
        expect(check_space_end).to eql(false)
      end
    end

    describe '#check_methods' do
      it 'expect check_method space between to return true' do
        @ind_in = 4
        @test_text = ''
        expect(check_methods).to eql(true)
      end

      it 'expect check_method space between to return true' do
        @ind_in = 2
        @test_text = 'abc'
        expect(check_methods).to eql(true)
      end
    end
  end
end
