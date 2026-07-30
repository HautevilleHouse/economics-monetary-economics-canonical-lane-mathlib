import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure AssetPricingKernelPackage where
  stateSpace : Type u
  discountFactor : stateSpace → ℝ
  payoffSpace : Type v
  priceFunctional : (stateSpace → ℝ) → ℝ
  noArbitrage : Prop
  pricingKernelExists : Prop
  pricingKernelClosed : pricingKernelExists

structure AssetPricingKernelEvidence (A : AssetPricingKernelPackage) where
  noArbitrageClosed : A.noArbitrage
  pricingKernelExistsClosed : A.pricingKernelExists

def AssetPricingKernelClosed (A : AssetPricingKernelPackage) : Prop :=
  A.noArbitrage ∧ A.pricingKernelExists

theorem asset_pricing_kernel_closed_from_evidence (A : AssetPricingKernelPackage)
    (E : AssetPricingKernelEvidence A) : AssetPricingKernelClosed A := by
  exact And.intro E.noArbitrageClosed E.pricingKernelExistsClosed

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse