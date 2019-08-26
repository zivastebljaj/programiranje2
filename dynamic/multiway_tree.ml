type 'a mult_tree = T of 'a * 'a mult_tree list
let test = T("a", [T("f", [T("g", [])]); T("c", []); T("b", [T("d", []); T("e", [])])])
let test2 = T(1, [T(2, [T(1, [])]); T(3, []); T(-3, [T(-4, []); T(6, [])])])
let test3 = T(1,[T(1,[T(1,[])])])
let test4 = T(1,[T(1,[T(1,[]); T(1,[])])])

let rec count_nodes tree =
  let rec count_list = function
  | [] -> 0
  | t :: ts -> count_nodes t + count_list ts
  in
  match tree with
  | T (_, list) -> 1 + count_list list

let rec list_of_tree tree =
  let rec pomozna = function
  | [] -> []
  | t :: ts -> (list_of_tree t) @ (pomozna ts)
  in
  match tree with 
  T(x, list) -> [x] @ pomozna list

let rec vsebuje_neg tree=
  let rec pomozna = function 
  | [] -> false
  | t :: ts -> vsebuje_neg t || pomozna ts
  in
  match tree with 
  T(x, list) -> (x < 0) || pomozna list

let rec vsa_poz tree=
  let rec pomozna = function 
  | [] -> true
  | t :: ts -> vsa_poz t && pomozna ts
  in
  match tree with 
  T(x, list) -> (x > 0) && pomozna list

let rec dolzine tree =
  let rec pomozna = function
  | [] -> []
  | t :: ts -> (dolzine t) @ (pomozna ts)
  in
  match tree with 
  T(x, list) -> [(x, List.length list)] @ pomozna list

let rec dolzina1 tree =
  let rec pomozna = function
  | [] -> 0
  | t :: ts -> 1 + pomozna ts 
  in
  match tree with 
  T(x, list) -> pomozna list

let rec max_dolzina tree =
  let rec pomozna = function
  | [] -> 0
  | t :: ts as list -> if (max_dolzina t) > (List.length list) 
  then max (max_dolzina t) (pomozna ts)
  else max (List.length list) (pomozna ts)
  in
  match tree with
  T(x,list) -> pomozna list

let rec globina tree =
  let rec pomozna = function
  | [] -> 0
  | t :: ts -> max (globina t) (pomozna ts)
  in
  match tree with 
  T(x, list) -> 1 + pomozna list

let rec build n =
  let rec pomozna acc n = 
    match n with
    | 1 -> acc
    | _ -> pomozna  (T(1, [acc])) (n - 1) 
    in
    pomozna (T(1, [])) n
let rec create_list n =
  let rec pomozna acc n=
  match n with
  | 0 -> acc
  | n -> pomozna ((T(n, [])) :: acc) (n - 1)
  in
  pomozna [] n
let otrok n = T(0, create_list n)

let rec zlozi f x tree =
  let rec pomozna acc = function
  | [] -> acc
  | t :: ts ->  pomozna (zlozi t) ts 
  in
  match tree with
  | T(a, list) -> pomozna (f a) list  