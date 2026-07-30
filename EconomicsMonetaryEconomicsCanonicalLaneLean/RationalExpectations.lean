import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure RationalExpectationsPackage where
  stochasticProcess : Type u
  informationSet : Type v
  expectationOperator : (stochasticProcess → ℝ) → ℝ
  lawOfIteratedExpectations : Prop
  rationalExpectationEquilibrium : Prop
  modelConsistency : Prop

structure RationalExpectationsEvidence (R : RationalExpectationsPackage) where
  lawOfIteratedExpectationsClosed : R.lawOfIteratedExpectations
  rationalExpectationEquilibriumClosed : R.rationalExpectationEquilibrium
  modelConsistencyClosed : R.modelConsistency

def RationalExpectationsClosed (R : RationalExpectationsPackage) : Prop :=
  R.lawOfIteratedExpectations ∧ R.rationalExpectationEquilibrium ∧ R.modelConsistency

theorem rational_expectations_closed_from_evidence
    (R : RationalExpectationsPackage) (E : RationalExpectationsEvidence R) :
    RationalExpectationsClosed R :=
by
  exact And.intro E.lawOfIteratedExpectationsClosed
    (And.intro E.rationalExpectationEquilibriumClosed E.modelConsistencyClosed)

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse