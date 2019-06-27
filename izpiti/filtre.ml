type 'a veriga =
  | Filter of ('a -> bool) * 'a list * 'a veriga
  | Ostalo of 'a list

let test = Filter((>)0, [-5; -7], Filter((>)10, [7;2], Ostalo([100])))

let rec vstavi a veriga =
  match veriga with
  | Ostalo(t) -> Ostalo(a::t)
  | Filter(f, sez, rep) when (f a) -> Filter(f, a::sez, rep)
  | Filter(f, sez, rep) -> Filter(f, sez, vstavi a rep)

  let rec poisci a veriga =
    let rec isci a = function
    | [] -> false
    | x ::xs -> if (x=a) then true else isci a xs
in
  match veriga with
  | Ostalo(t) -> isci a t
  | Filter(f, sez, rep) when (f a) -> isci a sez
  | Filter(f, sez, rep) -> poisci a rep
 
  let rec izprazni_filtre = function
    | Ostalo(x) -> (Ostalo([]), x)
    | Filter(f, sez, rep) -> let (prazni, vsebina) = 
    izprazni_filtre rep in (Filter(f, [], prazni), sez @ vsebina)
