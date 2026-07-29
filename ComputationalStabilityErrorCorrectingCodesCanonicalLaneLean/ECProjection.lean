import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ecProjection : Projection ECState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ec_projection_idempotent (x : ECState) :
    ecProjection.toFun (ecProjection.toFun x) = ecProjection.toFun x := by
  exact ecProjection.idempotent x

end ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean
end HautevilleHouse