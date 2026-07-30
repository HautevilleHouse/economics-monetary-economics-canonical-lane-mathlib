import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure UtilityFunction where
  consumptionSet : Type u
  preferences : consumptionSet → consumptionSet → Prop
  utility : consumptionSet → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  monotonicity : Prop
  convexity : Prop

def UtilityFunctionClosed (U : UtilityFunction) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.monotonicity ∧ U.convexity

theorem utility_closed_from_evidence (U : UtilityFunction) : UtilityFunctionClosed U := by
  exact And.intro U.completeness (And.intro U.transitivity (And.intro U.continuity (And.intro U.monotonicity U.convexity)))

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse