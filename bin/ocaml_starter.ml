open Starter_lib

let usage = "USAGE: esy x ocaml_starter <dividend> <divisor>"

let () =
  match Array.to_list Sys.argv with
  | [ _program; a; b ] ->
    let a = float_of_string a in
    let b = float_of_string b in

    Math.safe_div a b
    |> Option.fold
        ~some:(Printf.sprintf "Result of division is %.1f")
        ~none:"Cannot divide by 0"
    |> print_endline
  | _ ->
    prerr_endline usage;
    exit 1
