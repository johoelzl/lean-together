import algebra.ordered_field
import order.filter

/- Adjoin an element to α -/

#check with_top
#check with_bot
#check with_zero

/- Construct a ordered group or ring -/

#check nonneg_comm_group
#check nonneg_ring
#check linear_nonneg_ring

/- Lift along a Galois connection -/

#check galois_connection -- L x ≤ y ↔ x ≤ R y

#check galois_insertion  -- galois_connection L R  ∧  L ∘ R = id

-- Application of `galois_insertion`:
#check filter.lattice.complete_lattice

-- `map` and `comap`
#check @filter.map
#check @filter.comap
#check @filter.map_le_iff_le_comap

-- Now we can define products:
#print filter.prod



