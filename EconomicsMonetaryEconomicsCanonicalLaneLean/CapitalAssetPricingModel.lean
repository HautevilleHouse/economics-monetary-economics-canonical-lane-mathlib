import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure CapitalAssetPricingModelPackage where
  riskFreeRate : ℝ
  marketPortfolioReturn : ℝ
  assetBeta : ℝ
  expectedReturn : ℝ
  marketRiskPremium : Prop
  securityMarketLine : Prop
  systematicRiskFactor : Prop

structure CapitalAssetPricingModelEvidence (C : CapitalAssetPricingModelPackage) where
  marketRiskPremiumClosed : C.marketRiskPremium
  securityMarketLineClosed : C.securityMarketLine
  systematicRiskFactorClosed : C.systematicRiskFactor

def CapitalAssetPricingModelClosed (C : CapitalAssetPricingModelPackage) : Prop :=
  C.marketRiskPremium ∧ C.securityMarketLine ∧ C.systematicRiskFactor

theorem capital_asset_pricing_model_closed_from_evidence (C : CapitalAssetPricingModelPackage)
    (E : CapitalAssetPricingModelEvidence C) : CapitalAssetPricingModelClosed C := by
  exact And.intro E.marketRiskPremiumClosed
    (And.intro E.securityMarketLineClosed E.systematicRiskFactorClosed)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse