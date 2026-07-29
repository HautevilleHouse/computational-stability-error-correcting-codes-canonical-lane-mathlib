import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean

structure AdmissibleClass where
  lane : ErrorCorrectingCode
  solverDecodes : Decodes lane.decoder lane.codewordSet
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decodes A.lane.decoder A.lane.codewordSet ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean
end HautevilleHouse