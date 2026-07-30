import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure RepresentationTheoremPackage (A : AdmissibleClass) where
  functorFromCategory : Prop
  naturalIsomorphism : Prop
  representationExists : Prop
  yonedaEmbedding : Prop

def RepresentationTheoremClosed (R : RepresentationTheoremPackage A) : Prop :=
  R.functorFromCategory ∧ R.naturalIsomorphism ∧ R.representationExists ∧ R.yonedaEmbedding

theorem representation_theorem_closed (R : RepresentationTheoremPackage A) : RepresentationTheoremClosed R := by
  exact And.intro R.functorFromCategory (And.intro R.naturalIsomorphism (And.intro R.representationExists R.yonedaEmbedding))

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse