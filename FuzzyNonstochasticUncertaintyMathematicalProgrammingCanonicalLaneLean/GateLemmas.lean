import HautevilleHouse.FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse