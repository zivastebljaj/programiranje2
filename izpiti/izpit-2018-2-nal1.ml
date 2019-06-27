let uporabi f x = f x

let ibaropu x f = f x 
let test = uporabi ((+) 4) 2

let rec zacetnih n list = 
  let rec zacetnih' n acc = function
  | [] -> None
  | x :: xs when (n= 0)-> Some (List.rev acc)
  | x :: xs -> zacetnih' (n - 1) (x :: acc) xs
  in
  zacetnih' n [] list