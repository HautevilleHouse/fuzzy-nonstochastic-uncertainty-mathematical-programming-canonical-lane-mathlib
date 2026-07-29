import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathProg.FuzzyUncertaintyBridgeLemmas
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathProg.NonstochasticUncertaintyEndpoint

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathProg

def gateClosed (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) (A : AdmissibleClass) : gateClosed Ω P A := by
  exact A.remainderRecorded

def ConstrainedFuzzyUncertaintyClosure (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) (A : AdmissibleClass) : Prop :=
  bridgeClosed Ω P A ∧ gateClosed Ω P A

theorem fuzzy_uncertainty_endgame (Ω : FuzzyUncertaintySpace) (P : PossibilityLinearProgram Ω) (A : AdmissibleClass) : ConstrainedFuzzyUncertaintyClosure Ω P A := by
  exact And.intro (bridge_from_admissible_class Ω P A) (gate_from_admissible_class Ω P A)

end FuzzyNonstochasticUncertaintyMathProg
end HautevilleHouse