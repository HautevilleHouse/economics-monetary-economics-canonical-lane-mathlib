import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure ExpectedUtilityTheoryPackage where
  outcomeSet : Type u
  preferenceRelation : Type v
  utilityFunction : Type w
  completeness : Prop
  transitivity : Prop
  independenceAxiom : Prop
  continuityAxiom : Prop
  expectedUtilityRepresentation : Prop

structure ExpectedUtilityTheoryEvidence (E : ExpectedUtilityTheoryPackage) where
  completenessClosed : E.completeness
  transitivityClosed : E.transitivity
  independenceAxiomClosed : E.independenceAxiom
  continuityAxiomClosed : E.continuityAxiom
  expectedUtilityRepresentationClosed : E.expectedUtilityRepresentation

def ExpectedUtilityTheoryClosed (E : ExpectedUtilityTheoryPackage) : Prop :=
  E.completeness ∧ E.transitivity ∧ E.independenceAxiom ∧
  E.continuityAxiom ∧ E.expectedUtilityRepresentation

theorem expected_utility_theory_closed_from_evidence (E : ExpectedUtilityTheoryPackage)
    (Ev : ExpectedUtilityTheoryEvidence E) : ExpectedUtilityTheoryClosed E := by
  exact And.intro Ev.completenessClosed
    (And.intro Ev.transitivityClosed
      (And.intro Ev.independenceAxiomClosed
        (And.intro Ev.continuityAxiomClosed Ev.expectedUtilityRepresentationClosed)))

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse