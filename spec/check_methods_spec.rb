require '../lib/check_methods'
include CheckMethods
describe CheckMethods do
  describe '#check_line_long' do
    it 'expect check_line_long to return true' do
      @it_size = 90
      expect(check_line_long).to eql(true)
    end
  end
end
