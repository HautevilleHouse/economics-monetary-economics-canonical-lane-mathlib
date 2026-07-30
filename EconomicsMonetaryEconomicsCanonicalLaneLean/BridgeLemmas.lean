import EconomicsMonetaryEconomicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconomicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse
