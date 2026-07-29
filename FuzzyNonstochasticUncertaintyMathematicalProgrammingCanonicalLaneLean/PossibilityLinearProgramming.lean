import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathProg.PossibilityMeasure

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathProg

structure PossibilityLinearProgram (Ω : FuzzyUncertaintySpace) where
  objective : Ω.carrier → ℝ
  constraints : List (Ω.carrier → ℝ)
  rhs : List ℝ
  optimizationType : String  -- "maximize" or "minimize"

structure PossibilityLinearProgramEvidence (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) where
  feasibleRegionNonempty : ∃ x, (∀ (c : Ω.carrier → ℝ) (i : Nat), c = P.constraints.get? i → some? → c x ≤ P.rhs.get? i)

end FuzzyNonstochasticUncertaintyMathProg
end HautevilleHouse