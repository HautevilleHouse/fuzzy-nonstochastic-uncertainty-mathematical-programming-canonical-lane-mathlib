import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure NonstochasticMeasure (X : Type u) where
  plausibilityFunction : (X → ℝ) → ℝ
  beliefFunction : (X → ℝ) → ℝ
  monotonicity : ∀ f g : X → ℝ, (∀ x, f x ≤ g x) → plausibilityFunction f ≤ plausibilityFunction g
  subadditivity : ∀ f g : X → ℝ, plausibilityFunction (f + g) ≤ plausibilityFunction f + plausibilityFunction g
  superadditivity : ∀ f g : X → ℝ, beliefFunction (f + g) ≥ beliefFunction f + beliefFunction g
  duality : ∀ f : X → ℝ, beliefFunction f + plausibilityFunction (-f) = 0

structure NonstochasticMeasureEvidence (X : Type u) (M : NonstochasticMeasure X) where
  monotonicityClosed : ∀ f g : X → ℝ, (∀ x, f x ≤ g x) → M.plausibilityFunction f ≤ M.plausibilityFunction g
  subadditivityClosed : ∀ f g : X → ℝ, M.plausibilityFunction (f + g) ≤ M.plausibilityFunction f + M.plausibilityFunction g
  superadditivityClosed : ∀ f g : X → ℝ, M.beliefFunction (f + g) ≥ M.beliefFunction f + M.beliefFunction g
  dualityClosed : ∀ f : X → ℝ, M.beliefFunction f + M.plausibilityFunction (-f) = 0

def NonstochasticMeasureClosed (X : Type u) (M : NonstochasticMeasure X) : Prop :=
  (∀ f g : X → ℝ, (∀ x, f x ≤ g x) → M.plausibilityFunction f ≤ M.plausibilityFunction g) ∧
  (∀ f g : X → ℝ, M.plausibilityFunction (f + g) ≤ M.plausibilityFunction f + M.plausibilityFunction g) ∧
  (∀ f g : X → ℝ, M.beliefFunction (f + g) ≥ M.beliefFunction f + M.beliefFunction g) ∧
  (∀ f : X → ℝ, M.beliefFunction f + M.plausibilityFunction (-f) = 0)

theorem nonstochastic_measure_closed_from_evidence (X : Type u) (M : NonstochasticMeasure X) (E : NonstochasticMeasureEvidence X M) :
    NonstochasticMeasureClosed X M := by
  exact And.intro E.monotonicityClosed (And.intro E.subadditivityClosed (And.intro E.superadditivityClosed E.dualityClosed))

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse
