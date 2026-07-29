import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean

def ConstrainedECClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ec_endgame (A : AdmissibleClass) :
    ConstrainedECClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean
end HautevilleHouse