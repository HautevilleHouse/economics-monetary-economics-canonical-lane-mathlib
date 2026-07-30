import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure PhillipsCurveTradeoffPackage where
  inflationRate : ℝ
  unemploymentRate : ℝ
  historicalData : List (ℝ × ℝ)
  shortRunTradeoff : Prop
  longRunVerticality : Prop
  policyRelevance : Prop

structure PhillipsCurveTradeoffEvidence (P : PhillipsCurveTradeoffPackage) where
  shortRunTradeoffClosed : P.shortRunTradeoff
  longRunVerticalityClosed : P.longRunVerticality
  policyRelevanceClosed : P.policyRelevance

def PhillipsCurveTradeoffClosed (P : PhillipsCurveTradeoffPackage) : Prop :=
  P.shortRunTradeoff ∧ P.longRunVerticality ∧ P.policyRelevance

theorem phillips_curve_tradeoff_closed_from_evidence
    (P : PhillipsCurveTradeoffPackage) (E : PhillipsCurveTradeoffEvidence P) :
    PhillipsCurveTradeoffClosed P :=
by
  exact And.intro E.shortRunTradeoffClosed
    (And.intro E.longRunVerticalityClosed E.policyRelevanceClosed)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse