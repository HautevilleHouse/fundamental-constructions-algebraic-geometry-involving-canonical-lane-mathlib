import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure QuasiCoherentSheafPackage where
  sheaf : Type u
  moduleSheaf : Type v
  quasiCoherentCondition : Prop
  locallyPresentable : Prop

structure QuasiCoherentSheafEvidence (Q : QuasiCoherentSheafPackage) where
  quasiCoherentConditionClosed : Q.quasiCoherentCondition
  locallyPresentableClosed : Q.locallyPresentable

def QuasiCoherentSheafClosed (Q : QuasiCoherentSheafPackage) : Prop :=
  Q.quasiCoherentCondition ∧ Q.locallyPresentable

theorem quasi_coherent_sheaf_closed_from_evidence (Q : QuasiCoherentSheafPackage) (E : QuasiCoherentSheafEvidence Q) :
    QuasiCoherentSheafClosed Q := by
  exact And.intro E.quasiCoherentConditionClosed E.locallyPresentableClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse