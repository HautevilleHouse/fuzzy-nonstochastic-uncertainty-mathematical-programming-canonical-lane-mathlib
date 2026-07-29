import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean.FuzzyConstraintSystem

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure NonstochasticObjective {U : UncertaintySet} (C : FuzzyConstraintSystem U) where
  objectiveFunction : U.carrier → ℝ
  optimalValue : ℝ
  attainment : Prop
  attainmentTerm : attainment

structure NonstochasticObjectiveEvidence {U : UncertaintySet} {C : FuzzyConstraintSystem U}
    (O : NonstochasticObjective C) where
  attainmentClosed : O.attainment

def NonstochasticObjectiveClosed {U : UncertaintySet} {C : FuzzyConstraintSystem U}
    (O : NonstochasticObjective C) : Prop :=
  O.attainment

theorem nonstochastic_objective_closed_from_evidence {U : UncertaintySet} {C : FuzzyConstraintSystem U}
    (O : NonstochasticObjective C) (E : NonstochasticObjectiveEvidence O) :
    NonstochasticObjectiveClosed O := by
  exact E.attainmentClosed

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse
