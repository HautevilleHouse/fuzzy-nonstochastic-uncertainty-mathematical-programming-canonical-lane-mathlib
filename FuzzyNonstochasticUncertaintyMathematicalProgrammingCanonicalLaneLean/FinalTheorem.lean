import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean.NonstochasticObjective

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

def ConstrainedFuzzyNonstochasticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fuzzy_nonstochastic_endgame (A : AdmissibleClass) :
    ConstrainedFuzzyNonstochasticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse
