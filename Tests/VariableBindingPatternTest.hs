data Number = Zero | Succ Number

data List (a :: *) = Nil | Cons a (List a)

-- Variable binding at first level
\x. let length = \y. case y of
    x       -> Zero
  in
  length (Cons Zero Nil)
