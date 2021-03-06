class CheckErrors
  def initialize
    @test_text = File.readlines('./lib/test_code.rb', chomp: true)
  end

  include CheckMethods
  def alert_errors
    @test_text.each_with_index do |item, ind|
      @item_in = item
      @ind_in = ind
      @it_size = @item_in.size
      p "Line #{@ind_in + 1} is too long [#{@it_size}/80]" if check_line_long
      p "Unexpected space at the end of line #{@ind_in + 1}" if check_space_end
      if (@item_in.strip.start_with? 'def ') && check_methods && (ind != 0)
        p "Expected empty line before method #{@ind_in + 1}"
      end
    end
  end
end
