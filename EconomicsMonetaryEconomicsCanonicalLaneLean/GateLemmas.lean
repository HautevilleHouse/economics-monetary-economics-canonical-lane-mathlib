import EconomicsMonetaryEconomicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse
