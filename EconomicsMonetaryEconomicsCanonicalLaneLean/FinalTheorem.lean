import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

def ConstrainedEconomicsMonetaryEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_monetary_economics_endgame (A : AdmissibleClass) :
    ConstrainedEconomicsMonetaryEconomicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse