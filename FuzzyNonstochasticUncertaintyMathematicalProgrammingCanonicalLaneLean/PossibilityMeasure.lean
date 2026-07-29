import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathProg.FuzzySetUncertaintySpace

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathProg

structure PossibilityMeasure (Ω : FuzzyUncertaintySpace) where
  possibility : (Ω.carrier → ℝ) → ℝ
  normalization : possibility (Ω.membership) = 1
  monotonicity : ∀ (f g : Ω.carrier → ℝ), (∀ x, f x ≤ g x) → possibility f ≤ possibility g

def possibilityMeasureClosed (Ω : FuzzyUncertaintySpace) (P : PossibilityMeasure Ω) : Prop :=
  P.normalization ∧ P.monotonicity

end FuzzyNonstochasticUncertaintyMathProg
end HautevilleHouse