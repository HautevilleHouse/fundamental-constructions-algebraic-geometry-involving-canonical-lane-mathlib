import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure BaseChangePackage {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) (F : Sheaf Y) where
  pullbackSheaf : Sheaf X
  pullbackMap : SheafMorphismPackage X (pullbackSheaf) (pullbackSheaf) -- placeholder
  baseChangeProperty : Prop
  stalkCompatibility : Prop
  baseChangePropertyClosed : baseChangeProperty
  stalkCompatibilityClosed : stalkCompatibility

def BaseChangeClosed {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) (F : Sheaf Y) (B : BaseChangePackage f F) : Prop :=
  B.baseChangeProperty ∧ B.stalkCompatibility

theorem base_change_closed_from_package {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y] (f : X → Y) (F : Sheaf Y) (B : BaseChangePackage f F) : BaseChangeClosed f F B := by
  exact And.intro B.baseChangePropertyClosed B.stalkCompatibilityClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse