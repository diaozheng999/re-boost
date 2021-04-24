open Traits

external clamp : ?lo:float -> ?hi:float -> float -> float = "clampV"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external clamp01 : int -> int = "clamp01"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external clamp01f : float -> float = "clamp01"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external clamp_for_comparison : int -> abs_ord = "clampForComparison"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]
