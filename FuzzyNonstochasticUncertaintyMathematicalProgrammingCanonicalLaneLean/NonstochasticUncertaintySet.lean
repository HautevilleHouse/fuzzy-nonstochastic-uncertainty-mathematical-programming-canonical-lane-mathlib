import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure UncertaintySet where
  carrier : Type u
  membershipDegree : carrier → Prop
  convexity : Prop
  normality : Prop
  convexityTerm : convexity
  normalityTerm : normality

structure UncertaintySetEvidence (U : UncertaintySet) where
  convexityClosed : U.convexity
  normalityClosed : U.normality

def UncertaintySetClosed (U : UncertaintySet) : Prop :=
  U.convexity ∧ U.normality

theorem uncertainty_set_closed_from_evidence (U : UncertaintySet) (E : UncertaintySetEvidence U) :
    UncertaintySetClosed U := by
  exact And.intro E.convexityClosed E.normalityClosed

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse
