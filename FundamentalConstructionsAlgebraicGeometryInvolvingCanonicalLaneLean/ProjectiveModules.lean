import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure ProjectiveModulePackage (R : Type u) [CommRing R] where
  module : Type v
  moduleStructure : Module R module
  liftingProperty : Prop
  directSummandFree : Prop
  finitelyGenerated : Prop

structure ProjectiveModuleEvidence {R : Type u} [CommRing R] (P : ProjectiveModulePackage R) where
  liftingPropertyClosed : P.liftingProperty
  directSummandFreeClosed : P.directSummandFree
  finitelyGeneratedClosed : P.finitelyGenerated

def ProjectiveModuleClosed {R : Type u} [CommRing R] (P : ProjectiveModulePackage R) : Prop :=
  P.liftingProperty ∧ P.directSummandFree ∧ P.finitelyGenerated

theorem projective_module_closed_from_evidence {R : Type u} [CommRing R] (P : ProjectiveModulePackage R) (E : ProjectiveModuleEvidence P) : ProjectiveModuleClosed P := by
  exact And.intro E.liftingPropertyClosed (And.intro E.directSummandFreeClosed E.finitelyGeneratedClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse