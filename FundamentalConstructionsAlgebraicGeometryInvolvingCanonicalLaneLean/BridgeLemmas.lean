import canonicalLaneMathlib.AdmissibleClass
import FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse