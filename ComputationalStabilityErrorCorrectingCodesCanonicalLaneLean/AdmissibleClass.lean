import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodes

structure AdmissibleClass where
  lane : CseccAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalStabilityErrorCorrectingCodes
end HautevilleHouse
