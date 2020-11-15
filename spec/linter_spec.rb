require_relative '../logic/checkerrors'
require_relative '../logic/raisingerrors'
require_relative '../logic/test'

describe CheckErrors do
  describe '#check_whitespaces' do
    context 'When trailing whitespace detected' do
      it 'Should return true' do
        testing = CheckErrors.new('123 ', 0)

        testing.check_whitespaces
        expect(testing).to receive(RaisingErrors.new.raise_an_error(1, @indx))
      end
    end
  end
end
