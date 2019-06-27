let longer list1 list2 = 
  if (List.length list1 >= List.length list2) then list1 else list2

type 'a tree = Node of 'a tree * 'a * 'a tree | Empty

let leaf x = Node(Empty, x, Empty)
let test = Node(Node(leaf 3, 10, Node(leaf 14, 13, leaf 6)), 11, Node(leaf 2, 8, leaf 10))
let rec increasing meja = function 
 | Empty -> []
 | Node(x, y, z) -> if y > meja then 
 (increasing y x) @ [y] @ (increasing y z)
 else []

 let rec decreasing meja = function 
 | Empty -> []
 | Node(x, y, z) -> if y < meja then 
 (decreasing y x) @ [y] @ (decreasing3 y z)
 else []
 
 let rec longest = function
  | Empty -> failwith "ni"
  | Node(x, y, z) -> longer (increasing y x) (increasing y z)