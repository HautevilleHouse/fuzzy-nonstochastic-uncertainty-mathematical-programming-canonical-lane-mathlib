import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathProg

structure FuzzyUncertaintySpace where
  carrier : Type
  membership : carrier → ℝ
  normalized : membership = λ x => 1
  supProperty : ∃ (x : carrier), membership x = 1

end FuzzyNonstochasticUncertaintyMathProg
end HautevilleHouse