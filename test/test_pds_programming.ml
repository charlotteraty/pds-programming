open OUnit2;;
open Batteries;;

let dummy_test _ =
  assert_equal 4 [%dummy 4]
;;

let double_test _ =
  let x =
    let%double y = 4 in y + 3
  in
  assert_equal 11 x
;;

let tests = "Pds_programming" >::: [

    "dummy test" >:: dummy_test;
    "double test" >:: double_test;

  ]
;;
