import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure QuasiCoherentSheafPackage where
  scheme : Type u
  sheaf : Type v
  isQuasiCoherent : Prop
  coherentWhenNoetherian : Prop
  pullbackQuasiCoherent : Prop

structure QuasiCoherentSheafEvidence (Q : QuasiCoherentSheafPackage) where
  isQuasiCoherentClosed : Q.isQuasiCoherent
  coherentWhenNoetherianClosed : Q.coherentWhenNoetherian
  pullbackQuasiCoherentClosed : Q.pullbackQuasiCoherent

def QuasiCoherentSheafClosed (Q : QuasiCoherentSheafPackage) : Prop :=
  Q.isQuasiCoherent ∧ Q.coherentWhenNoetherian ∧ Q.pullbackQuasiCoherent

theorem quasi_coherent_sheaf_closed_from_evidence (Q : QuasiCoherentSheafPackage)
    (E : QuasiCoherentSheafEvidence Q) : QuasiCoherentSheafClosed Q := by
  exact And.intro E.isQuasiCoherentClosed
    (And.intro E.coherentWhenNoetherianClosed E.pullbackQuasiCoherentClosed)

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse