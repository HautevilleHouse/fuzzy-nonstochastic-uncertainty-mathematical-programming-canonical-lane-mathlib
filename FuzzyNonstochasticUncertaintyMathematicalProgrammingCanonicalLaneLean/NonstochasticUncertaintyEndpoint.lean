import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathProg.PossibilityLinearProgramming

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathProg

structure NonstochasticUncertaintyEndpoint (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) where
  optimalValue : ℝ
  possibilityLevel : ℝ
  endpointSatisfied : possibilityLevel = 1
  remainderRecorded : possibilityLevel = 0
  gateWitness : endpointSatisfied ∨ remainderRecorded

def endpointClosed (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) (E : NonstochasticUncertaintyEndpoint Ω P) : Prop :=
  E.endpointSatisfied ∨ E.remainderRecorded

end FuzzyNonstochasticUncertaintyMathProg
end HautevilleHouse