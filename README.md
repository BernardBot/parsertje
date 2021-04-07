# parsertje
Parser Template for Haskell's `parsec` package

`parsertje` is intended as a starting point for a Haskell parser. Clone this repo and
start building your own! To see how `parsertje` can be used, checkout its branches.

Read the [parsec](https://hackage.haskell.org/package/parsec) and [indents](https://hackage.haskell.org/package/indents) docs.

`parsertje` uses these modules:
- [Text.Parsec](https://hackage.haskell.org/package/parsec-3.1.14.0/docs/Text-Parsec.html)
- [Text.Parsec.Language](https://hackage.haskell.org/package/parsec-3.1.14.0/docs/Text-Parsec-Language.html)
- [Text.Parsec.Token](https://hackage.haskell.org/package/parsec-3.1.14.0/docs/Text-Parsec-Token.html)
- [Text.Parsec.Expr](https://hackage.haskell.org/package/parsec-3.1.14.0/docs/Text-Parsec-Expr.html)
- [Text.Parsec.Indent](https://hackage.haskell.org/package/indents-0.5.0.1/docs/Text-Parsec-Indent.html)

Other resources:
- [Kaleidoscope parser](https://www.stephendiehl.com/llvm/#chapter-2-parser-and-ast)
- [blog post on indents](https://spin.atomicobject.com/2012/03/16/using-text-parsec-indent-to-parse-an-indentation-sensitive-language-with-haskells-parsec-library/)