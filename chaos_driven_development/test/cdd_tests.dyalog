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

:EndNameSpace