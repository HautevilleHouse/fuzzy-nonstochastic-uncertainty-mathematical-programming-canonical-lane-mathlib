import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean

structure RobustOptimizationProblem {U : FuzzyUncertaintySet} where
  decisionSet : Type v
  costFunction : decisionSet → U.carrier → ℝ
  worstCaseCost : decisionSet → ℝ
  worstCaseCostDefined : ∀ d : decisionSet, worstCaseCost d = ⨆ (x : U.carrier), costFunction d x

structure RobustOptimizationEvidence {U : FuzzyUncertaintySet} (P : RobustOptimizationProblem) where
  worstCaseSupClosed : ∀ d : P.decisionSet, P.worstCaseCost d = ⨆ (x : U.carrier), P.costFunction d x

def RobustOptimizationClosed {U : FuzzyUncertaintySet} (P : RobustOptimizationProblem) : Prop :=
  ∀ d : P.decisionSet, P.worstCaseCost d = ⨆ (x : U.carrier), P.costFunction d x

theorem robust_optimization_closed_from_evidence {U : FuzzyUncertaintySet} (P : RobustOptimizationProblem) (E : RobustOptimizationEvidence P) :
    RobustOptimizationClosed P := by
  intro d
  exact E.worstCaseSupClosed d

end FuzzyNonstochasticUncertaintyMathematicalProgrammingCanonicalLaneLean
end HautevilleHouse
