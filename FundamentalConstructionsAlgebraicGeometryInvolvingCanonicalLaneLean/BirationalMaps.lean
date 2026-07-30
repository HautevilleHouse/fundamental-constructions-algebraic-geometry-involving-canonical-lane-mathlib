import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure BirationalMapPackage where
  sourceVariety : Type u
  targetVariety : Type v
  rationalMap : sourceVariery → targetVariety
  birationalInverse : targetVariety → sourceVariety
  dominant : Prop
  inverseUndefinedOn : Set sourceVariety
  forwardComposedInverseIdentity : Prop
  inverseComposedForwardIdentity : Prop

def BirationalMapClosed (B : BirationalMapPackage) : Prop :=
  B.forwardComposedInverseIdentity ∧ B.inverseComposedForwardIdentity

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse
