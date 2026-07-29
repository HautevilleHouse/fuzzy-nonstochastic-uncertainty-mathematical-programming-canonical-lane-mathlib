import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathProg.FuzzySetUncertaintySpace

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathProg

structure NecessityMeasure (Ω : FuzzyUncertaintySpace) where
  necessity : (Ω.carrier → ℝ) → ℝ
  duality : ∀ (f : Ω.carrier → ℝ), necessity f = 1 - possibility f
  possibility : PossibilityMeasure Ω

def necessityMeasureClosed (Ω : FuzzyUncertaintySpace) (N : NecessityMeasure Ω) : Prop :=
  N.duality

end FuzzyNonstochasticUncertaintyMathProg
end HautevilleHouse