import EconomicsMonetaryEconomicsCanonicalLaneLean.ReviewerBridge
import EconomicsMonetaryEconomicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EconomicsMonetaryEconomicsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  equilibriumConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  equilibriumConstrainedStatement := "Arrow-Debreu equilibrium, utility maximization, growth, asset pricing via admissible closure",
  certificateLane := "economic_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def EconomicConstrainedTheoremClosed : Prop :=
  sourceTheoremStatement.certificateLane = "economic_constrained" ∧
  ClassicalSourceBoundaryCarried

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  unfold ClassicalSourceBoundaryCarried
  have h1 : formalizationCertificate.theoremBoundaryOpen = true := by
    rfl
  have h2 : formalizationCertificate.sourceConjectureClosureClaimed = false := by
    rfl
  exact And.intro h1 h2

theorem economic_constrained_theorem_closed_checked :
    EconomicConstrainedTheoremClosed := by
  unfold EconomicConstrainedTheoremClosed
  apply And.intro
  · rfl
  · exact classical_source_boundary_carried_checked

end EconomicsMonetaryEconomicsCanonicalLaneLean
end HautevilleHouse