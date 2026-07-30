import canonicalLaneMathlib.AdmissibleClass
import FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean.CoherentSheaf

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure ProjectiveVarietyPackage (k : Type u) where
  projectiveSpace : Type v
  homogeneousIdeal : Type w
  varietyStructure : Prop
  closedInProjectiveSpace : Prop
  irreducibility : Prop

structure ProjectiveVarietyEvidence (k : Type u) (P : ProjectiveVarietyPackage k) where
  varietyStructureClosed : P.varietyStructure
  closedInProjectiveSpaceClosed : P.closedInProjectiveSpace
  irreducibilityClosed : P.irreducibility

def ProjectiveVarietyClosed (k : Type u) (P : ProjectiveVarietyPackage k) : Prop :=
  P.varietyStructure ∧ P.closedInProjectiveSpace ∧ P.irreducibility

theorem projective_variety_closed_from_evidence
    (k : Type u) (P : ProjectiveVarietyPackage k) (E : ProjectiveVarietyEvidence k P) :
    ProjectiveVarietyClosed k P := by
  exact And.intro E.varietyStructureClosed
    (And.intro E.closedInProjectiveSpaceClosed E.irreducibilityClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse