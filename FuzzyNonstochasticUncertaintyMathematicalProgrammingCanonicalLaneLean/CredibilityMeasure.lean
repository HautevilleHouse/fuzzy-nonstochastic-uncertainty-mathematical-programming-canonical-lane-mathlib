import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgramming

structure CredibilityMeasure (A : AdmissibleClass) where
  groundSet : Type
  credibilityDistribution : groundSet → ℝ
  credibilityDef : ∀ x, credibilityDistribution x = (somePossibility x + someNecessity x) / 2
  normativity : credibilityDistribution (someSet) = 1
  subadditivity : ∀ x y, credibilityDistribution (x ∪ y) ≤ credibilityDistribution x + credibilityDistribution y
  bridgeClosedWitness : bridgeClosed A
  gateClosedWitness : gateClosed A

def CredibilityClosed (C : CredibilityMeasure A) : Prop :=
  C.normativity ∧ C.subadditivity

theorem credibility_closed (A : AdmissibleClass) (C : CredibilityMeasure A) : CredibilityClosed C := by
  exact And.intro C.normativity C.subadditivity

end FuzzyNonstochasticUncertaintyMathematicalProgramming
end HautevilleHouse