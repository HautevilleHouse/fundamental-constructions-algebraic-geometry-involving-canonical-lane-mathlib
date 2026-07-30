import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure ProjectiveVarietyPackage where
  field : Type u
  homogeneousCoordinates : Type v
  projectiveSpace : TopologicalSpace
  vanishingIdeal : Prop
  varietyDefined : Prop
  irreducibility : Prop
  dimension : Nat

structure ProjectiveVarietyEvidence (P : ProjectiveVarietyPackage) where
  vanishingIdealClosed : P.vanishingIdeal
  varietyDefinedClosed : P.varietyDefined
  irreducibilityClosed : P.irreducibility

def ProjectiveVarietyClosed (P : ProjectiveVarietyPackage) : Prop :=
  P.vanishingIdeal ∧ P.varietyDefined ∧ P.irreducibility

theorem projective_variety_closed_from_evidence (P : ProjectiveVarietyPackage)
    (E : ProjectiveVarietyEvidence P) : ProjectiveVarietyClosed P :=
  And.intro E.vanishingIdealClosed
    (And.intro E.varietyDefinedClosed E.irreducibilityClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse
