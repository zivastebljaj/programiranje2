type 'a neprazen_sez = Konec of 'a| Sestavljen of 'a * 'a neprazen_sez

let rec zadnji nep_sez =
  match nep_sez with
  | Konec(x) -> x
  | Sestavljen(x, xs) -> zadnji xs

let rec prvi nep_sez = 
  match nep_sez with
  | Sestavljen(x, xs) -> x
  | Konec(x) -> x

let test = Sestavljen(1, Sestavljen(2, Konec(3)))

let rec dolzina = function
 | Konec(_) -> 1
 | Sestavljen(_,xs) -> 1 + dolzina xs

let rec pretvori = function
 | Konec(x) -> [x]
 | Sestavljen(x, xs) -> x :: pretvori xs

let rec zlozi f z nep_sez = 
  match nep_sez with
  | Konec(x) -> f z x 
  | Sestavljen(x, xs) -> zlozi f (f z x) xs