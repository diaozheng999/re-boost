external truthy : 'a -> 'a option = "truthy"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "Option"]

external of_js : 'a -> 'a option = "ofJS"
  [@@bs.module "@nasi/boost"] [@@bs.scope "common", "Option"]
