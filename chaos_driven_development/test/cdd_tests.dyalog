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
          robot_pos←3 3
          robot_heading←1
          board_dim #.cdd.disp_game robot_pos robot_heading
      }
            
      interpret_DF_1_command_TEST←{
          #.UT.expect←(1 2)1
          pos←2 2
          heading←1
          (pos heading)#.cdd.interpret'DF 1'
      }
      
      interpret_DF_2_command_TEST←{
          #.UT.expect←(1 3)1
          pos←3 3
          heading←1
          (pos heading)#.cdd.interpret'DF 2'
      }
      
      interpret_DF_3_command_TEST←{
          #.UT.expect←(1 4)1
          pos←4 4
          heading←1
          (pos heading)#.cdd.interpret'DF 3'
      }
      
      interpret_DB_command_TEST←{
          #.UT.expect←(3 2)1
          pos←2 2
          heading←1
          (pos heading)#.cdd.interpret'DB'
      }
      
      interpret_TL_command_TEST←{
          #.UT.expect←(2 2)4
          pos←2 2
          heading←1
          (pos heading)#.cdd.interpret'TL'
      }
      
      interpret_TR_command_TEST←{
          #.UT.expect←(2 2)2
          pos←2 2
          heading←1
          (pos heading)#.cdd.interpret'TR'
      }
      
      interpret_UT_command_TEST←{
          #.UT.expect←(2 2)3
          pos←2 2
          heading←1
          (pos heading)#.cdd.interpret'UT'
      }
      
      nine_commands_set_TEST←{
          #.UT.expect←9
          ⊃⍴#.cdd.random_commands
      }
           
      play_TEST←{
          #.UT.expect←(↑'⎕⎕' '⎕▲')(↑'⎕▲' '⎕⎕')(↑'⎕▶' '⎕⎕')(↑'▶⎕' '⎕⎕')(↑'▲⎕' '⎕⎕')
          ((2 2)1)#.cdd.play'DF 1' 'TR' 'DB' 'TL'
      }
:EndNameSpace

