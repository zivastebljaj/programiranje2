type filter_tree = Node of filter_tree * int * filter_tree| Leaf of int list

let test = Node(Node(Leaf([1]), 5, Leaf([])), 10, Node(Leaf([]), 15, Leaf([19; 20])))

let rec vstavi a filt_tree =
  match filt_tree with 
  | Node(x, y, z) when (a <= y) -> Node((vstavi a x), y, z)
  | Node(x, y, z) -> Node(x, y, (vstavi a z))
  | Leaf(t) -> Leaf(a :: t)

let rec vstavi_seznam list filt_tree = 
  match (list, filt_tree) with
  | ([], t) -> t 
  | (x::xs, t) -> vstavi_seznam xs (vstavi x filt_tree)
