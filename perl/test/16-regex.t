#!/usr/bin/env lingy-test

T=> #"fo+o"
 == #"fo+o"

T=> (re-pattern "fo+o")
 == #"fo+o"

T=> (re-find #"foo" "foobar")
 == "foo"

T=> (re-find #"foo" "bar")
 == nil

T=> (re-find #"(f)(o)(o)" "foobar")
 == ["foo" "f" "o" "o"]

T=> (re-matches #"fo*bar" "foooobar")
 == "foooobar"

T=> (re-matches #"f(o*)bar" "foooobar")
 == ["foooobar" "oooo"]

T=> (re-matches #"fo*bar" "foooobarbaz")
 == nil

T=> #"\bfoo\b"
 == #"\bfoo\b"

T=> #"\[\]\{\}\(\)\+\*\?\^\$\|"
 == #"\[\]\{\}\(\)\+\*\?\^\$\|"

T=> (re-matches #"\{{3}(\d+)\+(\}*)" "{{{123+}}}")
 == ["{{{123+}}}" "123" "}}}"]

# T=> >
#  == #"\a\b\c\d\e\f\h\n\r\s\t\u0000\v\w\x00\z\`\~\!\@\#\$\%\^\&\*\(\)\-\_\=\+\{\}\[\]\|\\\:\;\"\'\<\>\,\.\?\/\000\1\2\3\4\5\6\7\8\9\A\B\G\H\Q\R\S\T\U\V\W\X\Y\Z

# vim: ft=txt:
