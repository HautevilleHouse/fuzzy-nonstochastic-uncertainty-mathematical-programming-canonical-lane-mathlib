import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure FuzzyUncertaintySet where
  carrier : Type u
  membershipFunction : carrier → ℝ
  membershipUpperBound : carrier → ℝ
  membershipLowerBound : carrier → ℝ
  consistencyCondition : ∀ x : carrier, membershipLowerBound x ≤ membershipFunction x ∧ membershipFunction x ≤ membershipUpperBound x

structure FuzzyUncertaintySetEvidence (U : FuzzyUncertaintySet) where
  consistencyConditionClosed : U.consistencyCondition

def FuzzyUncertaintySetClosed (U : FuzzyUncertaintySet) : Prop :=
  ∀ x : U.carrier, U.membershipLowerBound x ≤ U.membershipFunction x ∧ U.membershipFunction x ≤ U.membershipUpperBound x

theorem fuzzy_uncertainty_set_closed_from_evidence (U : FuzzyUncertaintySet) (E : FuzzyUncertaintySetEvidence U) :
    FuzzyUncertaintySetClosed U := by
  intro x
  exact E.consistencyConditionClosed x

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse
