module CheckMethods
    def check_line_long
      @it_size > 80
    end
  
    def check_space_end
      @item_in[-1, 1] == ' '
    end
  
    def check_methods
      @test_text[@ind_in - 1] != ''
    end
  end
  