import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure FuzzyUncertaintySpace where
  carrier : Type u
  fuzzySet : carrier → ℝ
  nonstochasticMeasure : (carrier → ℝ) → ℝ
  normalization : nonstochasticMeasure (fun _ => 1) = 1

def fuzzyUncertaintyClosed (S : FuzzyUncertaintySpace) : Prop :=
  S.normalization

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse