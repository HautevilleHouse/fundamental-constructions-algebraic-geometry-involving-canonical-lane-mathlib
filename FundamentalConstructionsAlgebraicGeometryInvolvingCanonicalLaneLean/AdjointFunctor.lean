import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean

structure AdjointFunctorPackage (C D : Category) (F : Functor C D) (G : Functor D C) where
  unit : NaturalTransformation (idFunctor C) (G ∘ F)
  counit : NaturalTransformation (F ∘ G) (idFunctor D)
  triangleIdentities : Prop
  unitIso : Prop
  triangleIdentitiesClosed : triangleIdentities
  unitIsoClosed : unitIso

def AdjointFunctorClosed {C D : Category} {F : Functor C D} {G : Functor D C} (A : AdjointFunctorPackage C D F G) : Prop :=
  A.triangleIdentities ∧ A.unitIso

theorem adjoint_functor_closed_from_package {C D : Category} {F : Functor C D} {G : Functor D C} (A : AdjointFunctorPackage C D F G) : AdjointFunctorClosed A := by
  exact And.intro A.triangleIdentitiesClosed A.unitIsoClosed

end FundamentalConstructionsAlgebraicGeometryInvolvingCanonicalLaneLean
end HautevilleHouse