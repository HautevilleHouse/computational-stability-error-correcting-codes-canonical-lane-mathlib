import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodes

def ConstrainedCseccClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_csecc_endgame (A : AdmissibleClass) :
    ConstrainedCseccClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalStabilityErrorCorrectingCodes
end HautevilleHouse
