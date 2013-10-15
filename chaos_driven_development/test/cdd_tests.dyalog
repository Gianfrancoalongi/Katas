﻿:NameSpace cdd_tests
                                        
      display_robot_headings_TEST←{
          #.UT.expect←'▲▶▼◀'
          #.cdd.disp_heading¨1 2 3 4
      }
      
      robot_turn_left_TEST←{
          #.UT.expect←'◀▲▶▼'
          #.cdd.disp_heading #.cdd.turn_left¨1 2 3 4
      }
      
      robot_turn_right_TEST←{
          #.UT.expect←'▶▼◀▲'
          #.cdd.disp_heading #.cdd.turn_right¨1 2 3 4
      }
      
      robot_u_turn_TEST←{
          #.UT.expect←'▼◀▲▶'
          #.cdd.disp_heading #.cdd.u_turn¨1 2 3 4
      }
      
      driving_forward_TEST←{
          #.UT.expect←(1 2)(2 3)(3 2)(2 1)
          (2 2)∘#.cdd.forward¨1 2 3 4
      }
      
      driving_backward_TEST←{
          #.UT.expect←(3 2)(2 1)(1 2)(2 3)
          (2 2)∘#.cdd.backward¨1 2 3 4
      }
      
      display_game_state_TEST←{
          #.UT.expect←↑'⎕⎕⎕' '⎕⎕⎕' '⎕⎕▲'
          board_dim←3 3
          robot_pos←3 3
          robot_heading←1
          board_dim #.cdd.disp_game robot_pos robot_heading
      }
            
      interpret_DF_command_TEST←{
          #.UT.expect←↑'⎕▲⎕' '⎕⎕⎕' '⎕⎕⎕'
          command←'DF'
          board←3 3
          pos←2 2
          heading←1
          board #.cdd.disp_game(pos heading)#.cdd.interpret'DF'
      }
      
      interpret_DB_command_TEST←{
          #.UT.expect←↑'⎕⎕⎕' '⎕⎕⎕' '⎕▲⎕'
          board←3 3
          pos←2 2
          heading←1
          board #.cdd.disp_game(pos heading)#.cdd.interpret'DB'
      }
      
      interpret_TL_command_TEST←{
          #.UT.expect←↑'⎕⎕' '⎕◀'
          board←2 2
          pos←2 2
          heading←1
          board #.cdd.disp_game(pos heading)#.cdd.interpret'TL'
      }
      
      interpret_TR_command_TEST←{
          #.UT.expect←↑'⎕⎕' '⎕▶'
          board←2 2
          pos←2 2
          heading←1
          board #.cdd.disp_game(pos heading)#.cdd.interpret'TR'
      }
      
      ⍝ (↑'⎕⎕⎕' '⎕▶⎕' '⎕⎕⎕')(↑'⎕⎕⎕' '⎕◀⎕' '⎕⎕⎕')
      ⍝ 'TR' 'DB' 'TL'

:EndNameSpace