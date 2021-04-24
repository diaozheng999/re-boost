include Js.Promise

type 'a promise = 'a Js.Promise.t

external map : 'a promise -> f:('a -> 'b) -> 'b promise = "then" [@@bs.send]

external bind : 'a promise -> f:('a -> 'b promise) -> 'b promise = "then"
  [@@bs.send]

let both a b = Js.Promise.all2 (a, b)

let defer f a =
  make (fun ~resolve ~reject:_ ->
      Js_time.unsafe_request_animation_frame (fun () -> (resolve (f a) [@bs])))

let defer2 f a b =
  make (fun ~resolve ~reject:_ ->
      Js_time.unsafe_request_animation_frame (fun () -> (resolve (f a b) [@bs])))

let deferp () =
  make (fun ~resolve ~reject:_ ->
      Js_time.unsafe_request_animation_frame (fun a -> (resolve a [@bs])))

let truthy _a : bool = [%raw "!!_a"]

let promisify f a =
  make (fun ~resolve ~reject ->
      f a (fun [@bs] err res ->
          if truthy err then reject err [@bs] else resolve res [@bs]))

module Let_syntax = struct
  type 'a t = 'a promise

  let return = Js.Promise.resolve

  external map : 'a promise -> f:('a -> 'b) -> 'b promise = "then" [@@bs.send]

  external bind : 'a promise -> f:('a -> 'b promise) -> 'b promise = "then"
    [@@bs.send]

  let both a b = Js.Promise.all2 (a, b)
end

module Deferred = struct
  module Let_syntax = struct
    type 'a t = 'a promise

    let return = resolve

    let map a ~f = bind a ~f:(defer f)

    let bind ~f = bind ~f:(defer f)

    let both = both
  end
end
