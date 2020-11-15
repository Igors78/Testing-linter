require '../logic/checkerrors'
require '../logic/raisingerrors'
require '../logic/test'

describe CheckErrors do
  describe '#check_whitespaces?' do
    context 'When trailing whitespace' do
      it 'Should return true' do
        testing = CheckErrors.new('123  ', 0)
        expect(testing.check_whitespaces?).to eq true
      end
      it 'Should return false' do
        testing = CheckErrors.new('123', 0)
        expect(testing.check_whitespaces?).to eq false
      end
    end
  end

  describe '#check_length?' do
    it 'Should return true if line exceeds recommended length' do
      testing = CheckErrors.new(('1' * 119), 0)
      expect(testing.check_length?).to eq true
    end
    it 'Should return false if line does not exceed recommended length' do
      testing = CheckErrors.new(('1' * 50), 0)
      expect(testing.check_length?).to eq false
    end
  end

  describe '#check_parentes_count?' do
    it 'Should return true if there is excessive parenteses' do
      testing = CheckErrors.new('1)', 0)
      expect(testing.check_parentes_count?).to eq true
    end
    it 'Should return false if there is no excessive parenteses' do
      testing = CheckErrors.new('1', 0)
      expect(testing.check_parentes_count?).to eq false
    end
  end

  describe '#check_bracket_count?' do
    it 'Should return true if there is excessive brackets' do
      testing = CheckErrors.new('1]', 0)
      expect(testing.check_bracket_count?).to eq true
    end
    it 'Should return false if there is no excessive brackets' do
      testing = CheckErrors.new('1', 0)
      expect(testing.check_bracket_count?).to eq false
    end
  end

  describe '#check_curly_count?' do
    it 'Should return true if there is excessive brackets' do
      testing = CheckErrors.new('1}', 0)
      expect(testing.check_curly_count?).to eq true
    end
    it 'Should return false if there is no excessive brackets' do
      testing = CheckErrors.new('1', 0)
      expect(testing.check_curly_count?).to eq false
    end
  end

  describe '#check_pipes_count?' do
    it 'Should return true if there is excessive brackets' do
      testing = CheckErrors.new('1|', 0)
      expect(testing.check_pipes_count?).to eq true
    end
    it 'Should return false if there is no excessive brackets' do
      testing = CheckErrors.new('1', 0)
      expect(testing.check_pipes_count?).to eq false
    end
  end
end
