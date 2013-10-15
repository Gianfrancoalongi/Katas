:NameSpace cdd_tests
                                        
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
          robot_pos←(3 3)
          robot_heading←1
          #.cdd.disp_game board_dim robot_pos robot_heading
      }

:EndNameSpace