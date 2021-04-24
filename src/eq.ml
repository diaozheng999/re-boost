open Traits

external is: 'a abs_eq = "is" [@@bs.val] [@@bs.scope "Object"]

external always: 'a abs_eq = "staticallyTypedAlways" [@@bs.module "@nasi/boost"][@@bs.scope "common", "eq"]

external str: string abs_eq = "str" [@@bs.module "@nasi/boost"][@@bs.scope "common", "eq"]

external bool: bool abs_eq = "bool" [@@bs.module "@nasi/boost"][@@bs.scope "common", "eq"]

external int: int abs_eq = "num" [@@bs.module "@nasi/boost"][@@bs.scope "common", "eq"]

external num: float abs_eq = "num" [@@bs.module "@nasi/boost"][@@bs.scope "common", "eq"]

external hash: 'a abs_eq = "hash" [@@bs.module "@nasi/boost"][@@bs.scope "common", "eq"]

external arr: 'a abs_eq -> 'a array abs_eq = "arr" [@@bs.module "@nasi/boost"][@@bs.scope "common", "eq"]

let exec abs_eq a b = abs_eq a b [@bs]

let abs eq = fun [@bs] a b -> eq a b
