# parsertje
Parser Template for Haskell's `parsec` package

`parsertje` is intended as a starting point for a Haskell parser. Clone this repo and start building your own! To see how `parsertje` can be used, checkout its branches.

Read the [parsec](https://hackage.haskell.org/package/parsec) and [indents](https://hackage.haskell.org/package/indents) docs.

`parsertje` uses these modules for parsing:
- [Text.Parsec](https://hackage.haskell.org/package/parsec-3.1.14.0/docs/Text-Parsec.html)
- [Text.Parsec.Language](https://hackage.haskell.org/package/parsec-3.1.14.0/docs/Text-Parsec-Language.html)
- [Text.Parsec.Token](https://hackage.haskell.org/package/parsec-3.1.14.0/docs/Text-Parsec-Token.html)
- [Text.Parsec.Expr](https://hackage.haskell.org/package/parsec-3.1.14.0/docs/Text-Parsec-Expr.html)
- [Text.Parsec.Indent](https://hackage.haskell.org/package/indents-0.5.0.1/docs/Text-Parsec-Indent.html)

[QuickCheck](http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html) is used for validating the parser. In order to generate random test cases we need to provide an `Arbitrary` instance for our data type and a pretty-printer. The tests are based on the property that `parse = parse . pretty . parse`.

`parsertje` uses these modules for testing and pretty-printing:
- [Test.QuickCheck](https://hackage.haskell.org/package/QuickCheck-2.14.2/docs/Test-QuickCheck.html)
- [Text.PrettyPrint.HughesPJ](https://hackage.haskell.org/package/pretty-1.1.3.6/docs/Text-PrettyPrint-HughesPJ.html)

Other resources:
- [Kaleidoscope parser](https://www.stephendiehl.com/llvm/#chapter-2-parser-and-ast)
- [blog post on indents](https://spin.atomicobject.com/2012/03/16/using-text-parsec-indent-to-parse-an-indentation-sensitive-language-with-haskells-parsec-library/)
- [blog post on parser testing with QuickCheck](https://lstephen.wordpress.com/2007/07/29/parsec-parser-testing-with-quickcheck/)