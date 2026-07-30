import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure RamseyGrowthModelPackage where
  capitalStock : Type u
  consumption : Type v
  productionFunction : capitalStock → capitalStock
  utilityFunctional : consumption → ℝ
  intertemporalOptimality : Prop
  steadyStateExists : Prop
  steadyStateClosed : steadyStateExists

structure RamseyGrowthModelEvidence (R : RamseyGrowthModelPackage) where
  intertemporalOptimalityClosed : R.intertemporalOptimality
  steadyStateExistsClosed : R.steadyStateExists

def RamseyGrowthModelClosed (R : RamseyGrowthModelPackage) : Prop :=
  R.intertemporalOptimality ∧ R.steadyStateExists

theorem ramsey_growth_model_closed_from_evidence (R : RamseyGrowthModelPackage)
    (E : RamseyGrowthModelEvidence R) : RamseyGrowthModelClosed R := by
  exact And.intro E.intertemporalOptimalityClosed E.steadyStateExistsClosed

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse