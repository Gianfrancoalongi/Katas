:NameSpace cdd_tests

      display_board_with_robot_heading_north_TEST←{
          #.UT.expect←↑'⎕⎕' '⎕▲'
          board←2 2⍴0
          robot_pos←⊂2 2
          robot_heading←1
          #.cdd.display board robot_pos robot_heading
      }
      
      display_board_with_robot_heading_east_TEST←{
          #.UT.expect←↑'⎕⎕' '⎕▶'
          board←2 2⍴0
          robot_pos←⊂2 2
          robot_heading←2
          #.cdd.display board robot_pos robot_heading
      }
      
      display_board_with_robot_heading_south_TEST←{
          #.UT.expect←↑'⎕⎕' '⎕▼'
          board←2 2⍴0
          robot_pos←⊂2 2
          robot_heading←3
          #.cdd.display board robot_pos robot_heading
      }
      
      display_board_with_robot_heading_west_TEST←{
          #.UT.expect←↑'⎕⎕' '⎕◀'
          board←2 2⍴0
          robot_pos←⊂2 2
          robot_heading←4
          #.cdd.display board robot_pos robot_heading
      }
:EndNameSpace
