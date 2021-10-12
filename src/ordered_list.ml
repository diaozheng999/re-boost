open Traits

type t

type node

external make : unit -> t = "Instance"
  [@@bs.new]
  [@@bs.module "@nasi/boost"]
  [@@bs.scope "ds"]
  [@@bs.scope "OrderedList"]

external compare : node abs_compare = "compare"
  [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

external add : t -> node = "add" [@@bs.send]

external mem : t -> finger:node -> node = "mem" [@@bs.send]

external set_head : t -> node -> node = "setHead" [@@bs.send]

external get_next : t -> node -> node = "getNext" [@@bs.send]

external get_head : t -> node = "getHead" [@@bs.send]

external get_first : t -> node = "getFirst" [@@bs.send]

external splice_out_incl : t -> start:node -> stop:node -> node
  = "spliceOutIncl"
  [@@bs.send]

external splice_out : t -> start:node -> stop:node -> node = "spliceOut"
  [@@bs.send]

external splice_out_to : t -> stop:node -> node = "spliceOutTo" [@@bs.send]

module Default_instance = struct
  external add : unit -> node = "add"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

  external mem : finger:node -> node = "mem"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

  external set_head : node -> node = "setHead"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

  external get_next : node -> node = "getNext"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

  external get_head : unit -> node = "getHead"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

  external get_first : unit -> node = "getFirst"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

  external splice_out_incl : start:node -> stop:node -> node = "spliceOutIncl"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

  external splice_out : start:node -> stop:node -> node = "spliceOut"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]

  external splice_out_to : stop:node -> node = "spliceOutTo"
    [@@bs.module "@nasi/boost"] [@@bs.scope "ds"] [@@bs.scope "OrderedList"]
end
