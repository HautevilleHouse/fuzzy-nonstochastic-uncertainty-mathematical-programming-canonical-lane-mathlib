import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathProg.NonstochasticUncertaintyEndpoint

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathProg

def bridgeClosed (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) (A : AdmissibleClass) : bridgeClosed Ω P A := by
  exact A.endpointSatisfied

end FuzzyNonstochasticUncertaintyMathProg
end HautevilleHouse