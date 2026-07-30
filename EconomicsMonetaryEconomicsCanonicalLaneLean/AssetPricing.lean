import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure StochasticDiscountFactorModel where
  assetSpace : Type u
  payoff : assetSpace → Type v
  discountFactor : Type w
  pricingEquation : Prop
  noArbitrage : Prop
  marketCompleteness : Prop

structure SDFEvidence (S : StochasticDiscountFactorModel) where
  pricingEquationClosed : S.pricingEquation
  noArbitrageClosed : S.noArbitrage
  marketCompletenessClosed : S.marketCompleteness

def SDFModelClosed (S : StochasticDiscountFactorModel) : Prop :=
  S.pricingEquation ∧ S.noArbitrage ∧ S.marketCompleteness

theorem sdf_model_closed_from_evidence
    (S : StochasticDiscountFactorModel) (Ev : SDFEvidence S) :
    SDFModelClosed S := by
  exact And.intro Ev.pricingEquationClosed
    (And.intro Ev.noArbitrageClosed Ev.marketCompletenessClosed)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse