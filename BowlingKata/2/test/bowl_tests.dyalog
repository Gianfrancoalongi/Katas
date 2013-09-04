:NameSpace bowl_tests

      strike_frame_TEST←{
          #.UT.expect←10
          #.bowl.frame,'X'
      }
      
      miss_miss_frame_TEST←{
          #.UT.expect←0 0
          #.bowl.frame'--'
      }

:EndNameSpace
