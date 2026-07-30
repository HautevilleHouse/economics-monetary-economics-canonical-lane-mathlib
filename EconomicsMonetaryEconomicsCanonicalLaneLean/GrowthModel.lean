import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure NeoclassicalGrowthModel where
  householdType : Type u
  utilityDiscountFactor : ℝ
  productionFunction : ℝ → ℝ
  capitalAccumulation : Prop
  laborSupply : Prop
  resourceConstraint : Prop
  optimalGrowthPath : Prop

def GrowthModelClosed (G : NeoclassicalGrowthModel) : Prop :=
  G.capitalAccumulation ∧ G.laborSupply ∧ G.resourceConstraint ∧ G.optimalGrowthPath

theorem growth_model_closed_from_evidence (G : NeoclassicalGrowthModel) : GrowthModelClosed G := by
  exact And.intro G.capitalAccumulation (And.intro G.laborSupply (And.intro G.resourceConstraint G.optimalGrowthPath))

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse