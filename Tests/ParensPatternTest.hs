data Number = Zero | Succ Number

data List (a :: *) = Nil | Cons a (List a)

-- Regular patterns test
\x. let length = \y. case y of
    (Nil)           -> Zero
    (Cons (x) (xs)) -> Succ (length xs)
  in
  length (Cons Zero Nil)
