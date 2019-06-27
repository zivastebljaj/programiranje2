let razlika_kvadratov a b = (a + b) * (a + b) -(a*a + b*b)
let uporabi_na_paru f (a, b) = (f a, f begin)

let rec ponovi_seznam n list =
  match n with 
  | n when (n<=0)-> []
  | _ -> list @ ponovi_seznam (n-1) list
 let rec razdeli list =
  let rec razdeli' acc1 acc2 = function
  | [] -> (acc1, acc2)
  | x ::xs when x <0 -> razdeli' (x ::acc1) acc2 xs
  | x ::xs -> razdeli' acc1 (x :: acc2) xs
  in
  razdeli' [] [] list