import EconomicsMonetaryEconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure AdmissibleClass where
  object : EconomicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse
