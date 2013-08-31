:NameSpace bowling_tests

      parse_strike_frame_TEST←{
          #.UT.expect←10
          #.bowling.parse_frame'X'
      }
      
      parse_spare_frame_TEST←{
          #.UT.expect←8 2
          #.bowling.parse_frame'8/'
      }
      
      parse_spare_frame_with_miss_TEST←{
          #.UT.expect←0 10
          #.bowling.parse_frame'-/'
      }

:EndNameSpace
