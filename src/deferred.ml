open Promise

type 'a deferred

type 'a t = 'a deferred

external make : unit -> 'a deferred = "Deferred"
  [@@bs.module "@nasi/boost"] [@@bs.scope "async"]

external resolve : 'a deferred -> by:'a -> unit = "resolve" [@@bs.send]

external resolve_by : 'a deferred -> by:'a promise -> unit = "resolve"
  [@@bs.send]

external resolve_by_deferred : 'a deferred -> by:'a deferred -> unit = "resolve"
  [@@bs.send]

external reject : 'a deferred -> by:exn -> unit = "reject" [@@bs.send]

external as_promise : 'a deferred -> 'a promise = "%identity"
