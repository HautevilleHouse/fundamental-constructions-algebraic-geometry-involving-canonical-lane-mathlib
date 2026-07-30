import canonicalLaneMathlib.AdmissibleClass
import FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure AffineSchemePackage where
  underlyingRing : Type u
  primeSpectrum : Type v
  structureSheaf : Type w
  localRings : Prop
  locallyRingedSpace : Prop

structure AffineSchemeEvidence (P : AffineSchemePackage) where
  localRingsClosed : P.localRings
  locallyRingedSpaceClosed : P.locallyRingedSpace

def AffineSchemeClosed (P : AffineSchemePackage) : Prop :=
  P.localRings ∧ P.locallyRingedSpace

theorem affine_scheme_closed_from_evidence (P : AffineSchemePackage) (E : AffineSchemeEvidence P) :
    AffineSchemeClosed P := by
  exact And.intro E.localRingsClosed E.locallyRingedSpaceClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse