﻿:NameSpace bowl_tests

      strike_frame_TEST←{
          #.UT.expect←10
          #.bowl.frame,'X'
      }
      
      miss_miss_frame_TEST←{
          #.UT.expect←0 0
          #.bowl.frame'--'
      }
      
      miss_hit_frame_TEST←{
          #.UT.expect←0 1
          #.bowl.frame'-1'
      }
      
      miss_spare_frame_TEST←{
          #.UT.expect←0 10
          #.bowl.frame'-/'
      }
      
      hit_spare_frame_TEST←{
          #.UT.expect←4 6
          #.bowl.frame'4/'
      }
      
      hit_miss_TEST←{
          #.UT.expect←4 0
          #.bowl.frame'4-'
      }

:EndNameSpace
