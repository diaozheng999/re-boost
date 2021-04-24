open Traits

external append : 'a list -> 'a list -> 'a list = "append"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external rev : 'a list -> 'a list = "rev"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external rev_append : 'a list -> 'a list -> 'a list = "revAppend"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external map : 'a list -> f:(('a -> 'b)[@bs.uncurry]) -> 'b list = "mapU"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external rev_map : 'a list -> f:(('a -> 'b)[@bs.uncurry]) -> 'b list = "revMapU"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external of_array : 'a array -> 'a list = "ofArray"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external of_array_rev : 'a array -> 'a list = "ofArrayRev"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external reduce : 'a list -> f:(('a -> 'b -> 'b)[@bs.uncurry]) -> acc:'b -> 'b
  = "reduceU"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external eq : 'a abs_eq -> 'a list abs_eq = "eq"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

external serialise : 'a list -> e:'a serialiser -> Js.Json.t = "serialiseU"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "List"]

(* TODO: deserialise(U) *)
