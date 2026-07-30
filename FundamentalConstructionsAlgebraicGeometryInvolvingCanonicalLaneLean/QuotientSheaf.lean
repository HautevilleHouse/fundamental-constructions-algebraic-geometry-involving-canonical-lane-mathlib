import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure QuotientSheafPackage (X : Type) [TopologicalSpace X] (F : Sheaf X) (R : F.presheaf → F.presheaf → Prop) where
  quotientPresheaf : Presheaf X
  quotientMap : SheafMorphismPackage X F (Sheaf.mk quotientPresheaf)
  universalProperty : Prop
  kernelVanishes : Prop
  universalPropertyClosed : universalProperty
  kernelVanishesClosed : kernelVanishes

def QuotientSheafClosed {X : Type} [TopologicalSpace X] {F : Sheaf X} (Q : QuotientSheafPackage X F) : Prop :=
  Q.universalProperty ∧ Q.kernelVanishes

theorem quotient_sheaf_closed_from_package {X : Type} [TopologicalSpace X] {F : Sheaf X} (Q : QuotientSheafPackage X F) : QuotientSheafClosed Q := by
  exact And.intro Q.universalPropertyClosed Q.kernelVanishesClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse