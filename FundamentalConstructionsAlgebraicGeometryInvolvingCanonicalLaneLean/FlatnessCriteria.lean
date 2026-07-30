import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure FlatnessCriteriaPackage {R : Type u} [CommRing R] (M : Module R) where
  tensorExactness : Prop
  localFlatness : Prop
  TorVanishing : Prop
  directLimitFlat : Prop

structure FlatnessCriteriaEvidence {R : Type u} [CommRing R] {M : Module R} (F : FlatnessCriteriaPackage M) where
  tensorExactnessClosed : F.tensorExactness
  localFlatnessClosed : F.localFlatness
  TorVanishingClosed : F.TorVanishing
  directLimitFlatClosed : F.directLimitFlat

def FlatnessCriteriaClosed {R : Type u} [CommRing R] {M : Module R} (F : FlatnessCriteriaPackage M) : Prop :=
  F.tensorExactness ∧ F.localFlatness ∧ F.TorVanishing ∧ F.directLimitFlat

theorem flatness_criteria_closed_from_evidence {R : Type u} [CommRing R] {M : Module R} (F : FlatnessCriteriaPackage M) (E : FlatnessCriteriaEvidence F) : FlatnessCriteriaClosed F := by
  exact And.intro E.tensorExactnessClosed (And.intro E.localFlatnessClosed (And.intro E.TorVanishingClosed E.directLimitFlatClosed))

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse