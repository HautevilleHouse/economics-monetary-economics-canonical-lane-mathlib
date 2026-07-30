import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure SolowGrowthModelPackage where
  productionFunction : Type u
  capitalAccumulation : Type v
  laborForceGrowth : ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  steadyStateCapital : ℝ
  steadyStateOutput : ℝ
  convergence : Prop

structure SolowGrowthModelEvidence (S : SolowGrowthModelPackage) where
  steadyStateCapitalClosed : S.steadyStateCapital
  steadyStateOutputClosed : S.steadyStateOutput
  convergenceClosed : S.convergence

def SolowGrowthModelClosed (S : SolowGrowthModelPackage) : Prop :=
  S.steadyStateCapital ∧ S.steadyStateOutput ∧ S.convergence

theorem solow_growth_model_closed_from_evidence (S : SolowGrowthModelPackage)
    (E : SolowGrowthModelEvidence S) : SolowGrowthModelClosed S := by
  exact And.intro E.steadyStateCapitalClosed
    (And.intro E.steadyStateOutputClosed E.convergenceClosed)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse