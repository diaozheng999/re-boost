type byte_array = Js.TypedArray2.Uint8Array.t

external mul31 : int array -> basis:int -> int = "mul31"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external mul31_of_bytes : byte_array -> basis:int -> int = "mul31"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external mul31s : string -> int = "mul31s"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external mul31s_with_basis : string -> basis:int -> int = "mul31s"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external fnv1a : int array -> basis:int -> int = "fnv1a"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external fnv1a_of_bytes : byte_array -> basis:int -> int = "fnv1a"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external fnv1as : string -> int = "fnv1as"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external hash_int : int -> int = "hashInt"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external hash_float : float -> int = "hashFloat"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external hash_num : float -> int = "hashNumber"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external hash_bool : bool -> int = "hashBoolean"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external hash_array : 'a array -> int = "hashArray"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external hash_obj : 'a Js.t -> int = "hashObject"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]

external hash : 'a -> int = "hash"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common"]
