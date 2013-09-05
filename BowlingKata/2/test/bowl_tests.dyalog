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
      
      score_strike_with_bonus_TEST←{
          #.UT.expect←13
          #.bowl.score 10(1 2)
      }
      
      score_spare_with_bonus_TEST←{
          #.UT.expect←11
          #.bowl.score(4 6)1
      }
      
      score_of_two_throws_TEST←{
          #.UT.expect←7
          #.bowl.score(4 3)(4 5)
      }
      
      score_of_given_game_sub_frames_TEST←{
          #.UT.expect←33
          #.bowl.game_score 10(1 2)(3 4)10
      }
      
      parse_game_with_two_bonus_TEST←{
          #.UT.expect←12⍴,10
          #.bowl.parse'X|X|X|X|X|X|X|X|X|X||XX'
      }
    

:EndNameSpace
