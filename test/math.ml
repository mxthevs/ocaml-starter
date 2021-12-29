open Starter_lib

let e = epsilon_float

let can_divide_by_positive_numbers () =
  Alcotest.(check @@ float e) "equals" 2.0 (Option.get (Math.safe_div 4.0 2.0))

let can_divide_by_negative_numbers () =
  Alcotest.(check @@ float e) "equals" (-2.0) (Option.get (Math.safe_div 4.0 (-2.0)))

let cannot_divide_by_zero () =
  Alcotest.(check (option (float e))) "equals" None (Math.safe_div 1.0 0.0)

let division_by_non_zero_numbers =
  [
    ("positive numbers", `Quick, can_divide_by_positive_numbers);
    ("negative numbers", `Quick, can_divide_by_negative_numbers);
  ]

let division_by_zero = [ ("zero", `Quick, cannot_divide_by_zero) ]
