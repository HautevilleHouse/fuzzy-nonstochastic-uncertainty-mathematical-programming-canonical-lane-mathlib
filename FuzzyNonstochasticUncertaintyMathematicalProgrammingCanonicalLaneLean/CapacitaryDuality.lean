import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure CapacitaryDuality (M : FuzzyMeasureSpace) (U : UncertaintyFunctional M) where
  capacity : (Set M.carrier) → ℝ
  dualityTheorem : ∀ A : Set M.carrier, 
    capacity A = U.functional (fun x => if x ∈ A then 1 else 0)
  subadditivity : ∀ A B, capacity (A ∪ B) ≤ capacity A + capacity B
  monotonicity : ∀ A B, A ⊆ B → capacity A ≤ capacity B

structure CapacitaryDualityEvidence (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) (D : CapacitaryDuality M U) where
  dualityTheoremClosed : D.dualityTheorem
  subadditivityClosed : D.subadditivity
  monotonicityClosed : D.monotonicity

def CapacitaryDualityClosed (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) (D : CapacitaryDuality M U) : Prop :=
  D.dualityTheorem ∧ D.subadditivity ∧ D.monotonicity

theorem capacitary_duality_closed_from_evidence (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) (D : CapacitaryDuality M U)
    (E : CapacitaryDualityEvidence M U D) : CapacitaryDualityClosed M U D := by
  exact And.intro E.dualityTheoremClosed
    (And.intro E.subadditivityClosed E.monotonicityClosed)

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse