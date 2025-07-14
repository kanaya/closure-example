text :: String
text = "Hello, World!"

wrap_string :: String -> String -> String
wrap_string w s = "<" ++ w ++ ">" ++ s ++ "</" ++ w ++ ">"

wrap_with_p :: String -> String
wrap_with_p s = wrap_string "p" s

wrap_with_body :: String -> String
wrap_with_body s = wrap_string "body" s

wrap_with_html :: String -> String
wrap_with_html s = wrap_string "html" s

wrapped_text :: String
wrapped_text = (wrap_with_html . wrap_with_body . wrap_with_p) text
