import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgramming

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (U : NonstochasticUncertaintySet A), UncertaintyClosed U

def gateClosed (A : AdmissibleClass) : Prop :=
  ∃ (C : CredibilityMeasure A), CredibilityClosed C

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- construct a trivial uncertainty set from the admissible object
  sorry

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  sorry

end FuzzyNonstochasticUncertaintyMathematicalProgramming
end HautevilleHouse