import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure UncertaintyFunctional (M : FuzzyMeasureSpace) where
  functional : (M.carrier → ℝ) → ℝ
  monotonicity : ∀ f g, (∀ x, f x ≤ g x) → functional f ≤ functional g
  comonotonicAdditivity : ∀ f g, Comonotonic f g → functional (f + g) = functional f + functional g
  normalization : functional (fun _ => 1) = 1

def Comonotonic {α β : Type u} [LinearOrder β] (f g : α → β) : Prop :=
  ∀ x y, (f x - f y) * (g x - g y) ≥ 0

structure UncertaintyFunctionalEvidence (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) where
  monotonicityClosed : U.monotonicity
  comonotonicAdditivityClosed : U.comonotonicAdditivity
  normalizationClosed : U.normalization

def UncertaintyFunctionalClosed (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) : Prop :=
  U.monotonicity ∧ U.comonotonicAdditivity ∧ U.normalization

theorem uncertainty_functional_closed_from_evidence (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) (E : UncertaintyFunctionalEvidence M U) :
    UncertaintyFunctionalClosed M U := by
  exact And.intro E.monotonicityClosed
    (And.intro E.comonotonicAdditivityClosed E.normalizationClosed)

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse