open Promise

type sem

type t = sem

external make : int -> sem = "Semaphore"
  [@@bs.new] [@@bs.module "@nasi/boost"] [@@bs.scope "async"]

external make_with_threshold : int -> threshold:int -> sem = "Semaphore"
  [@@bs.new] [@@bs.module "@nasi/boost"] [@@bs.scope "async"]

external wait : sem -> unit promise = "wait" [@@bs.send]

external signal : sem -> unit = "signal" [@@bs.send]
