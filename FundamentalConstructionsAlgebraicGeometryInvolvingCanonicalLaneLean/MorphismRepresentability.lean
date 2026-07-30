import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure RepresentableMorphismPackage where
  source : Type u
  target : Type v
  morphism : source → target
  isRepresentable : Prop
  baseChangeClosed : Prop

structure RepresentableMorphismEvidence (R : RepresentableMorphismPackage) where
  isRepresentableClosed : R.isRepresentable
  baseChangeClosedClosed : R.baseChangeClosed

def RepresentableMorphismClosed (R : RepresentableMorphismPackage) : Prop :=
  R.isRepresentable ∧ R.baseChangeClosed

theorem representable_morphism_closed_from_evidence (R : RepresentableMorphismPackage)
    (E : RepresentableMorphismEvidence R) : RepresentableMorphismClosed R := by
  exact And.intro E.isRepresentableClosed E.baseChangeClosedClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse