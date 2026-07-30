import canonicalLaneMathlib.AdmissibleClass
import FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean.AffineScheme

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure CoherentSheafPackage {X : Type u} (P : AffineSchemePackage) (U : UniversalPropertyPackage X P) where
  sheafOnX : Type v
  locallyPresented : Prop
  coherenceCondition : Prop

structure CoherentSheafEvidence {X : Type u} {P : AffineSchemePackage} {U : UniversalPropertyPackage X P}
    (C : CoherentSheafPackage X P U) where
  locallyPresentedClosed : C.locallyPresented
  coherenceConditionClosed : C.coherenceCondition

def CoherentSheafClosed {X : Type u} {P : AffineSchemePackage} {U : UniversalPropertyPackage X P}
    (C : CoherentSheafPackage X P U) : Prop :=
  C.locallyPresented ∧ C.coherenceCondition

theorem coherent_sheaf_closed_from_evidence
    {X : Type u} {P : AffineSchemePackage} {U : UniversalPropertyPackage X P}
    (C : CoherentSheafPackage X P U) (E : CoherentSheafEvidence C) : CoherentSheafClosed C := by
  exact And.intro E.locallyPresentedClosed E.coherenceConditionClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse