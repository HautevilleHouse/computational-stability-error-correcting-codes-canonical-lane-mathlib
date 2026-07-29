import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  Decodes A.lane.decoder A.lane.codewordSet

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.solverDecodes

end ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean
end HautevilleHouse