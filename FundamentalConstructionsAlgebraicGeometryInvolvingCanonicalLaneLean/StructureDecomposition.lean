import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure StructureDecompositionPackage (A : AdmissibleClass) where
  decompositionIntoIrreducibles : Prop
  primaryDecomposition : Prop
  jordanHolderSeries : Prop
  uniquenessOfDecomposition : Prop

def StructureDecompositionClosed (S : StructureDecompositionPackage A) : Prop :=
  S.decompositionIntoIrreducibles ∧ S.primaryDecomposition ∧ S.jordanHolderSeries ∧ S.uniquenessOfDecomposition

theorem structure_decomposition_closed (S : StructureDecompositionPackage A) : StructureDecompositionClosed S := by
  exact And.intro S.decompositionIntoIrreducibles (And.intro S.primaryDecomposition (And.intro S.jordanHolderSeries S.uniquenessOfDecomposition))

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse