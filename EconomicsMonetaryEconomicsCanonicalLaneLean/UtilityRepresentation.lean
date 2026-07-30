import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure UtilityRepresentationPackage where
  preferenceRelation : Type u → Type u → Prop
  utilityFunction : Type u → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  representationExists : Prop
  representationClosed : representationExists

structure UtilityRepresentationEvidence (U : UtilityRepresentationPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  representationExistsClosed : U.representationExists

def UtilityRepresentationClosed (U : UtilityRepresentationPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.representationExists

theorem utility_representation_closed_from_evidence (U : UtilityRepresentationPackage)
    (E : UtilityRepresentationEvidence U) : UtilityRepresentationClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed
    (And.intro E.continuityClosed E.representationExistsClosed))

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse