import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure SheafOfRingsPackage (X : Type u) [TopologicalSpace X] where
  sections : OpenNhds X → Type v
  restriction : ∀ U V : OpenNhds X, U ⊆ V → sections V → sections U
  identityRestriction : ∀ U (s : sections U), restriction U U (by trivial) s = s
  compositionRestriction : ∀ U V W (hUV : U ⊆ V) (hVW : V ⊆ W) (s : sections W),
    restriction U V hUV (restriction V W hVW s) = restriction U W (hUV.trans hVW) s
  ringStructure : ∀ U : OpenNhds X, Ring (sections U)
  restrictionRingHom : ∀ U V (h : U ⊆ V), RingHom (sections V) (sections U)

structure SheafOfRingsEvidence (X : Type u) [TopologicalSpace X] (S : SheafOfRingsPackage X) where
  identityRestrictionClosed : S.identityRestriction
  compositionRestrictionClosed : S.compositionRestriction
  restrictionRingHomClosed : ∀ U V (h : U ⊆ V), S.restrictionRingHom U V h

def SheafOfRingsClosed (X : Type u) [TopologicalSpace X] (S : SheafOfRingsPackage X) : Prop :=
  S.identityRestriction ∧ S.compositionRestriction ∧ (∀ U V (h : U ⊆ V), S.restrictionRingHom U V h)

theorem sheaf_of_rings_closed_from_evidence (X : Type u) [TopologicalSpace X]
    (S : SheafOfRingsPackage X) (E : SheafOfRingsEvidence X S) : SheafOfRingsClosed X S :=
  And.intro E.identityRestrictionClosed
    (And.intro E.compositionRestrictionClosed E.restrictionRingHomClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse
