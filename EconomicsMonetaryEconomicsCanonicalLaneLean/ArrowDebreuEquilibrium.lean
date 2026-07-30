import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure ArrowDebreuEquilibrium where
  commoditySpace : Type u
  priceSystem : commoditySpace → ℝ
  consumptionPlans : Type v
  endowment : commoditySpace
  preferences : consumptionPlans → commoditySpace → Prop
  feasibility : Prop
  optimality : Prop
  marketClearing : Prop

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibrium) : Prop :=
  A.feasibility ∧ A.optimality ∧ A.marketClearing

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse