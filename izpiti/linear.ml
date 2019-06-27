type vektor = int * int 
type matrika = int * int * int * int 
type funkcija = vektor -> vektor

module type LINEARNA = sig 
  type t 
  val id : t 
  val uporabi : t -> vektor -> vektor
  val iz_matrike : matrika -> t 
  val iz_funkcije : (vektor -> vektor) -> t 
  val kompozitum : t -> t -> t 
end 
 module Matrika : LINEARNA = struct 
  type t = matrika
  let id = (1,0,0, 1)
  let uporabi matrika vektor = 
    match (matrika, vektor) with
    | ((a,b,c,d), (e,f)) -> (a * e + b * f, c * e + d * f)
  let iz_matrike matrika = matrika
  let iz_funkcije f =
    let (a, c) = f (1, 0) in 
    let (b, d) = f (0, 1) in
    (a,b,c,d)
  let kompozitum matrika2 matrika2 =
    match (matrika2, matrika2) with
    | ((a,b,c,d), (e,g,f,h)) -> (a*e+b*f, c*e+d*f, a*g+b*f, c*g+d*h)
  end

module Funkcija : LINEARNA = struct
  type t = vektor -> vektor 
  let id = (fun x -> x)
  let uporabi f v = f v 
  let iz_matrike (a, b, c, d) = fun (x, y) -> (x*a + y*c, x *b + y*d)
  let iz_funkcije f = f
  let kompozitum f1 f2 = fun x -> f1 (f2 x)
end

