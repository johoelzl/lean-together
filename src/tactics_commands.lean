import data.multiset

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

#find (_ : nat) + (_ + _) = _ + _

-- alternatives
--  * use auto completion
--  * use Ctrl-T (maybe Cmd-T on MacOS)
--  * grep for it!

-- #print instances

#print classes

#print instances add_group

-- rcases

example (p : ℕ → Prop) (h : ∃i, i = 0 ∧ p i) : p 0 :=
begin
  /- `rcases` is for "recursive" cases, i.e. nested patterns. `rfl` performs subsitution -/
  rcases h with ⟨_, rfl, h⟩,
  exact h
end

example (p : ℕ → Prop) : (∃i, i = 0 ∧ p i) → p 0 :=
begin
  rintros ⟨_, rfl, h⟩,
  exact h
end

example {α} (p : multiset α → Prop) (h : ∀ l, p l) (m : multiset α) : p m :=
begin
  rcases m with ⟨l⟩, --< works also for quotients
  exact h l
end