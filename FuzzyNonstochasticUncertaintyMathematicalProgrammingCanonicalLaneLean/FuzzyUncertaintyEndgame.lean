import canonicalLaneMathlib.AdmissibleClass
import FuzzyNonstochasticUncertaintyMathematicalProgramming.FuzzyProgrammingBridge

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgramming

def ConstrainedFuzzyUncertaintyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_uncertainty_endgame (A : AdmissibleClass) : ConstrainedFuzzyUncertaintyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzyNonstochasticUncertaintyMathematicalProgramming
end HautevilleHouse