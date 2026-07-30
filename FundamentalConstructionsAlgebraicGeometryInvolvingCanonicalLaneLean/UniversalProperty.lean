import canonicalLaneMathlib.AdmissibleClass
import FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean.AffineScheme

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure UniversalPropertyPackage {R : Type u} (P : AffineSchemePackage) where
  targetObject : Type v
  universalMapping : Prop
  existenceCondition : Prop
  uniquenessCondition : Prop

structure UniversalPropertyEvidence {R : Type u} {P : AffineSchemePackage} (U : UniversalPropertyPackage R P) where
  universalMappingClosed : U.universalMapping
  existenceConditionClosed : U.existenceCondition
  uniquenessConditionClosed : U.uniquenessCondition

def UniversalPropertyClosed {R : Type u} {P : AffineSchemePackage} (U : UniversalPropertyPackage R P) : Prop :=
  U.universalMapping ∧ U.existenceCondition ∧ U.uniquenessCondition

theorem universal_property_closed_from_evidence
    {R : Type u} {P : AffineSchemePackage} (U : UniversalPropertyPackage R P)
    (E : UniversalPropertyEvidence U) : UniversalPropertyClosed U := by
  exact And.intro E.universalMappingClosed
    (And.intro E.existenceConditionClosed E.uniquenessConditionClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse