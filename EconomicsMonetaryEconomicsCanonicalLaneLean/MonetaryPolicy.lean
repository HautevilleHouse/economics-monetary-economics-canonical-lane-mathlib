import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure TaylorRuleModel where
  inflationTarget : ℝ
  outputGapTarget : ℝ
  interestRateRule : ℝ → ℝ → ℝ
  inflationStabilization : Prop
  outputStabilization : Prop
  determinacyCondition : Prop

structure TaylorRuleEvidence (T : TaylorRuleModel) where
  inflationStabilizationClosed : T.inflationStabilization
  outputStabilizationClosed : T.outputStabilization
  determinacyConditionClosed : T.determinacyCondition

def TaylorRuleClosed (T : TaylorRuleModel) : Prop :=
  T.inflationStabilization ∧ T.outputStabilization ∧ T.determinacyCondition

theorem taylor_rule_closed_from_evidence
    (T : TaylorRuleModel) (Ev : TaylorRuleEvidence T) :
    TaylorRuleClosed T := by
  exact And.intro Ev.inflationStabilizationClosed
    (And.intro Ev.outputStabilizationClosed Ev.determinacyConditionClosed)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse