let rec last = function
| [] -> None
| [x] -> Some x
| x :: xs -> last xs

let rec last_two = function
| [] -> None
| [x] -> None
| [x; y] -> Some [x; y]
| x ::xs -> last_two xs

let rec at n list =
  match list with
  | [] -> None
  | x :: xs -> if (n=0) then Some x else at (n-1) xs

let rec lenght list =
  let rec length' i = function
  | [] -> i 
  | x :: xs -> length' (i + 1) xs
  in
  length' 0 list

  let rec reverse list = 
    let rec reverse' acc = function
    | [] -> acc
    | x :: xs -> reverse' (x :: acc) xs
    in reverse' [] list
  let is_palindrome list =
    reverse list = list

let rec compress = function
| [] -> []
| [x] -> [x]
 | x :: y :: xs when x = y -> compress (y :: xs)
 | x :: y :: xs -> x :: compress (y :: xs)

 let rec encode list =
  let rec encode' count acc = function
  | [] -> []
  | [x] -> (x, count) :: acc
  | x :: (y :: xs as t) when (x = y) -> encode' (count + 1) acc t 
  | x :: (y :: xs as t) -> encode' 1 ((x, count):: acc) t
  in
  List.rev (encode' 1 [] list)

let rec pack list =
  let rec pack' acc1 acc = function
  | [] -> []
  | [x] -> (x :: acc1) :: acc
  | x :: (y :: xs as t) when (x = y) -> pack' (x :: acc1) acc t 
  | x :: (y :: xs as t) -> pack' [] ((x ::acc1) :: acc) t
  in
  List.rev (pack' [] [] list)
type 'a node =
  | One of 'a 
  | Many of 'a node list;;