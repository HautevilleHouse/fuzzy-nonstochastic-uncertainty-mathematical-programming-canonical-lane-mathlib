import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure FuzzyMeasureSpace where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  fuzzyMeasure : (Set carrier) → ℝ
  nonnegativity : ∀ s, fuzzyMeasure s ≥ 0
  emptyZero : fuzzyMeasure ∅ = 0
  monotonicity : ∀ s t, s ⊆ t → fuzzyMeasure s ≤ fuzzyMeasure t

structure FuzzyMeasureEvidence (M : FuzzyMeasureSpace) where
  nonnegativityClosed : M.nonnegativity
  emptyZeroClosed : M.emptyZero
  monotonicityClosed : M.monotonicity

def FuzzyMeasureClosed (M : FuzzyMeasureSpace) : Prop :=
  M.nonnegativity ∧ M.emptyZero ∧ M.monotonicity

theorem fuzzy_measure_closed_from_evidence (M : FuzzyMeasureSpace)
    (E : FuzzyMeasureEvidence M) : FuzzyMeasureClosed M := by
  exact And.intro E.nonnegativityClosed
    (And.intro E.emptyZeroClosed E.monotonicityClosed)

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse