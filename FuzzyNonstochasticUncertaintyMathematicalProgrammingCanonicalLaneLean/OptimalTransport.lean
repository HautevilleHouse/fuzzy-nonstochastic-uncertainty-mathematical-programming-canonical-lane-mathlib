import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure ImpreciseTransportPlan (X : Type u) (Y : Type v) where
  coupling : (X → ℝ) → (Y → ℝ) → ℝ
  marginalCondition : ∀ f : X → ℝ, ∀ g : Y → ℝ, coupling f g = coupling (fun x => f x) (fun y => g y)
  monotonicity : ∀ f f' : X → ℝ, (∀ x, f x ≤ f' x) → ∀ g : Y → ℝ, coupling f g ≤ coupling f' g

def optimalTransportClosed (X : Type u) (Y : Type v) (T : ImpreciseTransportPlan X Y) : Prop :=
  (∀ f : X → ℝ, ∀ g : Y → ℝ, T.coupling f g = T.coupling (fun x => f x) (fun y => g y)) ∧
  (∀ f f' : X → ℝ, (∀ x, f x ≤ f' x) → ∀ g : Y → ℝ, T.coupling f g ≤ T.coupling f' g)

structure ImpreciseTransportEvidence (X : Type u) (Y : Type v) (T : ImpreciseTransportPlan X Y) where
  marginalConditionClosed : ∀ f : X → ℝ, ∀ g : Y → ℝ, T.coupling f g = T.coupling (fun x => f x) (fun y => g y)
  monotonicityClosed : ∀ f f' : X → ℝ, (∀ x, f x ≤ f' x) → ∀ g : Y → ℝ, T.coupling f g ≤ T.coupling f' g

theorem imprecise_transport_closed_from_evidence (X : Type u) (Y : Type v) (T : ImpreciseTransportPlan X Y) (E : ImpreciseTransportEvidence X Y T) :
    optimalTransportClosed X Y T := by
  exact And.intro E.marginalConditionClosed E.monotonicityClosed

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse
