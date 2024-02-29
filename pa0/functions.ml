(* You will fill your implementations in this file *)

let rec fibonacci n =
  match n <= 1 with true -> 1 | false -> n * fibonacci (n - 1)

let max a b = match a > b with true -> a | false -> b
