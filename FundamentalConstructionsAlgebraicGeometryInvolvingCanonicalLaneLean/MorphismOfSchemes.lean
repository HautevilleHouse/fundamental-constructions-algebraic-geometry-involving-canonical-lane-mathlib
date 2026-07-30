import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure MorphismOfSchemesPackage where
  source : Type u
  target : Type v
  continuousMap : Type w
  structureSheafMap : Type x
  morphismAxioms : Prop

structure MorphismOfSchemesEvidence (M : MorphismOfSchemesPackage) where
  continuousMapClosed : M.continuousMap
  structureSheafMapClosed : M.structureSheafMap
  morphismAxiomsClosed : M.morphismAxioms

def MorphismOfSchemesClosed (M : MorphismOfSchemesPackage) : Prop :=
  M.continuousMap ∧ M.structureSheafMap ∧ M.morphismAxioms

theorem morphism_of_schemes_closed_from_evidence (M : MorphismOfSchemesPackage) (E : MorphismOfSchemesEvidence M) :
    MorphismOfSchemesClosed M := by
  exact And.intro E.continuousMapClosed (And.intro E.structureSheafMapClosed E.morphismAxiomsClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse