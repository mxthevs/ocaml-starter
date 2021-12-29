open Ocaml_starter_test

(**
  Entrypoint for the test runner.
  This aggregates all the tests and call Alcotest to run them. When
  creating a new test suite, don't forget to add it here!
*)

let () =
  let open Alcotest in
  run "Starter_lib"
    [
      ("non-zero divisor", Math.division_by_non_zero_numbers);
      ("zero divisor", Math.division_by_zero);
    ]
