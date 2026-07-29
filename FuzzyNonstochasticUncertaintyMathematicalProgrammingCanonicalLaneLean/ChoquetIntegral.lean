import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure ChoquetIntegral (M : FuzzyMeasureSpace) (U : UncertaintyFunctional M) where
  integrable : (M.carrier → ℝ) → Prop
  integral : (M.carrier → ℝ) → ℝ
  linearity : ∀ f g, integrable f → integrable g → integral (f + g) = integral f + integral g
  monotonicity : ∀ f g, integrable f → integrable g → (∀ x, f x ≤ g x) → integral f ≤ integral g
  choquetRepresentation : ∀ f, integrable f → integral f = U.functional f

structure ChoquetIntegralEvidence (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) (C : ChoquetIntegral M U) where
  linearityClosed : C.linearity
  monotonicityClosed : C.monotonicity
  choquetRepresentationClosed : C.choquetRepresentation

def ChoquetIntegralClosed (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) (C : ChoquetIntegral M U) : Prop :=
  C.linearity ∧ C.monotonicity ∧ C.choquetRepresentation

theorem choquet_integral_closed_from_evidence (M : FuzzyMeasureSpace)
    (U : UncertaintyFunctional M) (C : ChoquetIntegral M U)
    (E : ChoquetIntegralEvidence M U C) : ChoquetIntegralClosed M U C := by
  exact And.intro E.linearityClosed
    (And.intro E.monotonicityClosed E.choquetRepresentationClosed)

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse