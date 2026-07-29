import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean.FuzzyUncertaintySpace

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure UncertaintyObjective (S : FuzzyUncertaintySpace) where
  objectiveFunc : S.carrier → ℝ
  expectedValue : ℝ
  ambiguitySet : Set ℝ
  coherence : expectedValue ∈ ambiguitySet

def uncertaintyObjectiveClosed (S : FuzzyUncertaintySpace) (O : UncertaintyObjective S) : Prop :=
  O.coherence

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse