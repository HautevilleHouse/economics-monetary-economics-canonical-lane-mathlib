import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure SolowSwanModel where
  capitalStock : ℝ → ℝ
  laborForce : ℝ → ℝ
  productionFunction : ℝ → ℝ → ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  steadyStateCondition : Prop
  convergenceDynamics : Prop

structure RamseyCassKoopmansModel where
  capitalStock : ℝ → ℝ
  consumption : ℝ → ℝ
  utilityDiscountRate : ℝ
  capitalDepreciationRate : ℝ
  eulerEquation : Prop
  transversalityCondition : Prop

structure GrowthModelsPackage where
  solowSwan : SolowSwanModel
  ramseyCassKoopmans : RamseyCassKoopmansModel
  solowSteadyStateClosed : Prop
  ramseyOptimizationClosed : Prop

structure GrowthModelsEvidence (G : GrowthModelsPackage) where
  solowSteadyStateClosed : G.solowSteadyStateClosed
  ramseyOptimizationClosed : G.ramseyOptimizationClosed

def GrowthModelsClosed (G : GrowthModelsPackage) : Prop :=
  G.solowSteadyStateClosed ∧ G.ramseyOptimizationClosed

theorem growth_models_closed_from_evidence (G : GrowthModelsPackage) (E : GrowthModelsEvidence G) : GrowthModelsClosed G := by
  exact And.intro E.solowSteadyStateClosed E.ramseyOptimizationClosed

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse