import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure AffineSchemePackage where
  ring : Type u
  spectrum : Type v
  topology : TopologicalSpace spectrum
  structureSheaf : Type w
  isLocallyRingedSpace : Prop
  affineCover : Prop

structure AffineSchemeEvidence (A : AffineSchemePackage) where
  isLocallyRingedSpaceClosed : A.isLocallyRingedSpace
  affineCoverClosed : A.affineCover

def AffineSchemeClosed (A : AffineSchemePackage) : Prop :=
  A.isLocallyRingedSpace ∧ A.affineCover

theorem affine_scheme_closed_from_evidence (A : AffineSchemePackage)
    (E : AffineSchemeEvidence A) : AffineSchemeClosed A := by
  exact And.intro E.isLocallyRingedSpaceClosed E.affineCoverClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse