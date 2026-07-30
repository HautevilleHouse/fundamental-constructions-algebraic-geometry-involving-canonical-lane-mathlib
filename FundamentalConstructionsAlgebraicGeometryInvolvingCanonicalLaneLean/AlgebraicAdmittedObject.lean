import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure AlgebraicSpace where
  carrier : Type
  structure : Type

structure AlgebraicAdmittedObject where
  space : AlgebraicSpace
  universalProperty : Prop
  representationTheorem : Prop
  structureDecomposition : Prop
  conclusion : universalProperty ∧ representationTheorem ∧ structureDecomposition

def AlgebraicWitnessClosed (O : AlgebraicAdmittedObject) : Prop :=
  O.conclusion

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse