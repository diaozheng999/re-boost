type unique_gen

type unique

type t = unique

external make : unit -> unique_gen = "Unique"
  [@@bs.new] [@@bs.module "@nasi/boost"] [@@bs.scope "ds"]

external make_with_label : label:string -> unique_gen = "Unique"
  [@@bs.new] [@@bs.module "@nasi/boost"] [@@bs.scope "ds"]

external value : unique_gen -> unique = "value" [@@bs.get]

external string : unique_gen -> string = "string" [@@bs.get]

external number : unique_gen -> int = "number" [@@bs.get]

(** magic methods to help with ReScript debugging *)
external of_str : string -> unique = "%identity"
external to_str : unique -> string = "%identity"
