import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure ProjConstructionPackage where
  gradedRing : Type u
  irrelevantIdeal : Type v
  projSpectrum : Type w
  topology : TopologicalSpace projSpectrum
  structureSheaf : Type x
  isProjectiveScheme : Prop
  openAffineCover : Prop

structure ProjConstructionEvidence (P : ProjConstructionPackage) where
  isProjectiveSchemeClosed : P.isProjectiveScheme
  openAffineCoverClosed : P.openAffineCover

def ProjConstructionClosed (P : ProjConstructionPackage) : Prop :=
  P.isProjectiveScheme ∧ P.openAffineCover

theorem proj_construction_closed_from_evidence (P : ProjConstructionPackage)
    (E : ProjConstructionEvidence P) : ProjConstructionClosed P := by
  exact And.intro E.isProjectiveSchemeClosed E.openAffineCoverClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse