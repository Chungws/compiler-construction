open OUnit2
open Functions

let t_int name value expected =
  name >:: fun ctxt -> assert_equal expected value ~printer:string_of_int

let t_string name value expected =
  name >:: fun ctxt -> assert_equal expected value

let suite =
  "suite"
  >::: [ t_int "fact" (1 + 1) 2
       ; t_int "fibbo" (fibonacci 5) 120
       ; t_int "fibbo0" (fibonacci 0) 1
       ; t_int "max" (max 5 3) 5
       ; t_int "max4" (max 4 4) 4
       ; t_string "fact2" "1" "1" ]
;;

run_test_tt_main suite
