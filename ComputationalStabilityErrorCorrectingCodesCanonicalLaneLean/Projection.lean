import canonicalLaneMathlib.AdmissibleClass
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodes

open HautevilleHouse.CanonicalLaneMathlibCore

def cseccProjection : Projection CseccEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem csecc_projection_idempotent (x : CseccEndgameState) :
    cseccProjection.toFun (cseccProjection.toFun x) = cseccProjection.toFun x := by
  exact cseccProjection.idempotent x

end ComputationalStabilityErrorCorrectingCodes
end HautevilleHouse
