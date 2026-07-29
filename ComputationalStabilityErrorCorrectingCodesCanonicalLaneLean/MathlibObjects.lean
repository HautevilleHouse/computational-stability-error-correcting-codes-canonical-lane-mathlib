import canonicalLaneMathlib.AdmissibleClass
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodes

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev BitString := List Bool
abbrev Language := Set BitString

structure DecisionProcedure where
  accepts : BitString -> Bool

structure ErrorCorrectingCode where
  encode : BitString -> BitString
  decode : BitString -> BitString
  distance : ℕ

structure CseccClassicalObject where
  language : Language
  code : ErrorCorrectingCode
  noiseModel : BitString -> BitString

structure CseccAdmittedObject where
  classicalObject : CseccClassicalObject
  projectedLanguage : Language
  solver : DecisionProcedure

structure CseccEndgameState where
  admittedObject : CseccAdmittedObject

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  forall x : BitString, M.accepts x = true ↔ x ∈ L

end ComputationalStabilityErrorCorrectingCodes
end HautevilleHouse
