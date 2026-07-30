import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure ArrowDebreuEconomy where
  commoditySpace : Type u
  priceSystem : Type v
  consumptionSet : commoditySpace → Prop
  endowment : commoditySpace
  preferences : commoditySpace → commoditySpace → Prop
  productionSet : commoditySpace → Prop
  profitMaximization : Prop
  utilityMaximization : Prop
  marketClearing : Prop

structure ArrowDebreuEvidence (E : ArrowDebreuEconomy) where
  profitMaximizationClosed : E.profitMaximization
  utilityMaximizationClosed : E.utilityMaximization
  marketClearingClosed : E.marketClearing

def ArrowDebreuEquilibriumClosed (E : ArrowDebreuEconomy) : Prop :=
  E.profitMaximization ∧ E.utilityMaximization ∧ E.marketClearing

theorem arrow_debreu_equilibrium_closed_from_evidence
    (E : ArrowDebreuEconomy) (Ev : ArrowDebreuEvidence E) :
    ArrowDebreuEquilibriumClosed E := by
  exact And.intro Ev.profitMaximizationClosed
    (And.intro Ev.utilityMaximizationClosed Ev.marketClearingClosed)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse