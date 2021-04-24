open Promise

type timer = { interrupt : unit -> unit }

type t = timer

external wait : unit -> unit promise = "Timer"
  [@@bs.module "@nasi/boost"] [@@bs.scope "async", "Timer"]

external get_timer : unit -> timer = "Timer"
  [@@bs.module "@nasi/boost"] [@@bs.scope "async", "Timer"]

external as_promise : timer -> unit promise = "%identity"
