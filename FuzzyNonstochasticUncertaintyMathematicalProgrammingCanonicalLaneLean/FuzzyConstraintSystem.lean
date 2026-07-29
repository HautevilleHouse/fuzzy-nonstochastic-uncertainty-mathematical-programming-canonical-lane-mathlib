import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean.NonstochasticUncertaintySet

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure FuzzyConstraintSystem (U : UncertaintySet) where
  constraints : List (U.carrier → Prop)
  consistency : Prop
  feasibility : Prop
  consistencyTerm : consistency
  feasibilityTerm : feasibility

structure FuzzyConstraintSystemEvidence {U : UncertaintySet} (C : FuzzyConstraintSystem U) where
  consistencyClosed : C.consistency
  feasibilityClosed : C.feasibility

def FuzzyConstraintSystemClosed {U : UncertaintySet} (C : FuzzyConstraintSystem U) : Prop :=
  C.consistency ∧ C.feasibility

theorem fuzzy_constraint_system_closed_from_evidence {U : UncertaintySet}
    (C : FuzzyConstraintSystem U) (E : FuzzyConstraintSystemEvidence C) :
    FuzzyConstraintSystemClosed C := by
  exact And.intro E.consistencyClosed E.feasibilityClosed

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse
