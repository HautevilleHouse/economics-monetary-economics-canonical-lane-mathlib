import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure MonetaryPolicyRulePackage where
  nominalInterestRate : ℝ
  inflationRate : ℝ
  outputGap : ℝ
  naturalRate : ℝ
  inflationTarget : ℝ
  taylorRule : Prop
  inflationStabilization : Prop
  outputStabilization : Prop

structure MonetaryPolicyRuleEvidence (M : MonetaryPolicyRulePackage) where
  taylorRuleClosed : M.taylorRule
  inflationStabilizationClosed : M.inflationStabilization
  outputStabilizationClosed : M.outputStabilization

def MonetaryPolicyRuleClosed (M : MonetaryPolicyRulePackage) : Prop :=
  M.taylorRule ∧ M.inflationStabilization ∧ M.outputStabilization

theorem monetary_policy_rule_closed_from_evidence (M : MonetaryPolicyRulePackage)
    (E : MonetaryPolicyRuleEvidence M) : MonetaryPolicyRuleClosed M := by
  exact And.intro E.taylorRuleClosed
    (And.intro E.inflationStabilizationClosed E.outputStabilizationClosed)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse