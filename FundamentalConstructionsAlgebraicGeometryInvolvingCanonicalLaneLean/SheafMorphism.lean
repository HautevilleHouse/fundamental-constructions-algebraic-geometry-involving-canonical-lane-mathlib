import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure SheafMorphismPackage (X : Type) [TopologicalSpace X] (F G : Sheaf X) where
  baseMap : F.presheaf → G.presheaf
  compatibilityWithRestrictions : Prop
  naturalityCondition : Prop
  mappingOverOpenSets : Prop

structure SheafMorphismEvidence {X : Type} [TopologicalSpace X] {F G : Sheaf X} (M : SheafMorphismPackage X F G) where
  compatibilityWithRestrictionsClosed : M.compatibilityWithRestrictions
  naturalityConditionClosed : M.naturalityCondition
  mappingOverOpenSetsClosed : M.mappingOverOpenSets

def SheafMorphismClosed {X : Type} [TopologicalSpace X] {F G : Sheaf X} (M : SheafMorphismPackage X F G) : Prop :=
  M.compatibilityWithRestrictions ∧ M.naturalityCondition ∧ M.mappingOverOpenSets

theorem sheaf_morphism_closed_from_evidence {X : Type} [TopologicalSpace X] {F G : Sheaf X} (M : SheafMorphismPackage X F G) (E : SheafMorphismEvidence M) : SheafMorphismClosed M := by
  exact And.intro E.compatibilityWithRestrictionsClosed (And.intro E.naturalityConditionClosed E.mappingOverOpenSetsClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse