external int_of_number : float -> int option = "intOfNumber"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external finite : float -> float option = "finite"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external wrap_nan : float -> float option = "wrapNaN"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external mul : int -> int -> int = "mul"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]
