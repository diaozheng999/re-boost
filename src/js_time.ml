type timeout_id
type immediate_id
type frame_req

external set_timeout : (unit -> unit) -> float -> timeout_id = "setTimeout" [@@bs.val]

external set_immediate : (unit -> unit) -> immediate_id = "setImmediate" [@@bs.val]

external request_animation_frame : (unit -> unit) -> frame_req
  = "requestAnimationFrame"
  [@@bs.val]

external unsafe_set_timeout : (unit -> unit) -> float -> unit = "setTimeout" [@@bs.val]

external unsafe_set_immediate : (unit -> unit) -> unit = "setImmediate" [@@bs.val]

external unsafe_request_animation_frame : (unit -> unit) -> unit
  = "requestAnimationFrame"
  [@@bs.val]

external cancel_animation_frame : frame_req -> unit = "cancelAnimationFrame" [@@bs.val]

external clear_timeout : timeout_id -> unit = "clearTimeout" [@@bs.val]

external clear_immediate : immediate_id -> unit = "clearImmediate" [@@bs.val]
