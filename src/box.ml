open Traits

type 'a box = {
  value : 'a;
  update : 'a -> unit;
  mutate : ('a -> unit) -> 'a box;
}

type 'a t = 'a box

external make : 'a -> 'a box = "Box"
  [@@bs.new] [@@bs.module "@nasi/boost"] [@@bs.scope "ds"]

external eq : 'a abs_eq -> 'a box abs_eq = "eqBox"
  [@@bs.module "@nasi/boost"] [@@bs.scope "ds"]

external compare : 'a abs_compare -> 'a box abs_compare = "compareBox"
  [@@bs.module "@nasi/boost"] [@@bs.scope "ds"]
