:NameSpace bowling_tests

      parse_strike_frame_TEST←{
          #.UT.expect←10
          #.bowling.parse_frame,'X'
      }
      
      parse_spare_frame_TEST←{
          #.UT.expect←8 2
          #.bowling.parse_frame'8/'
      }
      
      parse_spare_frame_with_miss_TEST←{
          #.UT.expect←0 10
          #.bowling.parse_frame'-/'
      }
      
      parse_miss_frame_TEST←{
          #.UT.expect←5 0
          #.bowling.parse_frame'5-'
      }
      
      parse_all_miss_frame_TEST←{
          #.UT.expect←0 0
          #.bowling.parse_frame'--'
      }
      
      parse_game_input_to_frames_TEST←{
          #.UT.expect←10(5 5)(0 0)
          #.bowling.parse_game'X|5/|--|'
      }
      
      score_strike_two_frames_TEST←{
          #.UT.expect←20
          #.bowling.score 10(5 0)
      }
      
      score_strikes_frames_TEST←{
          #.UT.expect←60
          #.bowling.score 10 10 10
      }
      
      score_spare_frame_TEST←{
          #.UT.expect←25
          #.bowling.score(5 5)(6 0)(3 0)
      }
      
      parse_full_game_input_TEST←{
          #.UT.expect←12⍴10
          #.bowling.parse_game'X|X|X|X|X|X|X|X|X|X||XX'
      }
      
      score_full_strike_game_TEST←{
          #.UT.expect←300
          #.bowling.score_from_game'X|X|X|X|X|X|X|X|X|X||XX'
      }
      
      score_nine_miss_game_TEST←{
          #.UT.expect←90
          #.bowling.score_from_game'9-|9-|9-|9-|9-|9-|9-|9-|9-|9-||'
      }
      
      score_all_spare_game_TEST←{
          #.UT.expect←150
          #.bowling.score_from_game'5/|5/|5/|5/|5/|5/|5/|5/|5/|5/||5'
      }
:EndNameSpace
