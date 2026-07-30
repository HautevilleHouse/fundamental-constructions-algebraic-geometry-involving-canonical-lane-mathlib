import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure FlatMorphismPackage where
  source : Type u
  target : Type v
  morphism : source → target
  isFlat : Prop
  stalksFlat : Prop
  baseChangeFlat : Prop

structure FlatMorphismEvidence (F : FlatMorphismPackage) where
  isFlatClosed : F.isFlat
  stalksFlatClosed : F.stalksFlat
  baseChangeFlatClosed : F.baseChangeFlat

def FlatMorphismClosed (F : FlatMorphismPackage) : Prop :=
  F.isFlat ∧ F.stalksFlat ∧ F.baseChangeFlat

theorem flat_morphism_closed_from_evidence (F : FlatMorphismPackage)
    (E : FlatMorphismEvidence F) : FlatMorphismClosed F := by
  exact And.intro E.isFlatClosed
    (And.intro E.stalksFlatClosed E.baseChangeFlatClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse