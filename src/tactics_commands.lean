import tactic.abel
import tactic.ring
import tactic.linarith
import tactic.interactive

-- the following imports should be not part of any finished theory
import tactic.where
import tactic.find


-- #where

namespace where_demo

variables {α β : Type} [decidable_eq α] (a b : α)

/- many many lines of code later -/

#where

def f (a : α) := a

#where

include a

#where

end where_demo

-- #find

#find
