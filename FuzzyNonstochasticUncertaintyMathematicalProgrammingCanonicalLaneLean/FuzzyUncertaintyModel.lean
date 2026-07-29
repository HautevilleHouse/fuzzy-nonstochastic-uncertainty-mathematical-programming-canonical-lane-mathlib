import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgramming

structure FuzzyVariable where
  name : String
  domain : Type
  membershipFunc : domain → ℝ
  membershipUpper : ℝ
  membershipLower : ℝ

structure FuzzyConstraint where
  variables : List FuzzyVariable
  relation : String
  rhs : ℝ
  lhsExpression : (List ℝ) → ℝ

structure NonstochasticUncertaintySet (A : AdmissibleClass) where
  fuzzyVars : List FuzzyVariable
  constraints : List FuzzyConstraint
  admissibleWitness : A.endpointSatisfied ∨ A.remainderRecorded

def UncertaintyClosed (U : NonstochasticUncertaintySet) : Prop :=
  (∀ v ∈ U.fuzzyVars, v.membershipUpper ≥ v.membershipLower) ∧
  (∀ c ∈ U.constraints, c.relation ∈ ({"≤", "≥", "="} : Set String))

end FuzzyNonstochasticUncertaintyMathematicalProgramming
end HautevilleHouse