import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean.FuzzyUncertaintySpace

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure RobustConstraint (S : FuzzyUncertaintySpace) where
  constraintFunc : S.carrier → ℝ
  threshold : ℝ
  violationBound : ℝ
  robustSatisfaction : ∀ (x : S.carrier), constraintFunc x ≤ threshold + violationBound

def robustConstraintClosed (S : FuzzyUncertaintySpace) (C : RobustConstraint S) : Prop :=
  C.robustSatisfaction

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse