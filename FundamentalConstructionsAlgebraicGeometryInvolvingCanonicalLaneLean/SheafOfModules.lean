import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure SheafOfModulesPackage where
  sheaf : Type u
  ring : Type v
  moduleStructure : Prop
  sheafAxioms : Prop
  sectionsLocalization : Prop

structure SheafOfModulesEvidence (S : SheafOfModulesPackage) where
  moduleStructureClosed : S.moduleStructure
  sheafAxiomsClosed : S.sheafAxioms
  sectionsLocalizationClosed : S.sectionsLocalization

def SheafOfModulesClosed (S : SheafOfModulesPackage) : Prop :=
  S.moduleStructure ∧ S.sheafAxioms ∧ S.sectionsLocalization

theorem sheaf_of_modules_closed_from_evidence (S : SheafOfModulesPackage) (E : SheafOfModulesEvidence S) :
    SheafOfModulesClosed S := by
  exact And.intro E.moduleStructureClosed (And.intro E.sheafAxiomsClosed E.sectionsLocalizationClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse