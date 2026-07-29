import HautevilleHouse.FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FuzzyNonstochasticUncertaintyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse