import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure AffineSchemePackage where
  ring : Type u
  spec : TopologicalSpace
  structureSheaf : SheafOfRingsPackage spec
  isAffine : Prop
  ringIsomorphicToGlobalSections : Prop

structure AffineSchemeEvidence (A : AffineSchemePackage) where
  isAffineClosed : A.isAffine
  ringIsomorphicToGlobalSectionsClosed : A.ringIsomorphicToGlobalSections

def AffineSchemeClosed (A : AffineSchemePackage) : Prop :=
  A.isAffine ∧ A.ringIsomorphicToGlobalSections

theorem affine_scheme_closed_from_evidence (A : AffineSchemePackage)
    (E : AffineSchemeEvidence A) : AffineSchemeClosed A :=
  And.intro E.isAffineClosed E.ringIsomorphicToGlobalSectionsClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse
