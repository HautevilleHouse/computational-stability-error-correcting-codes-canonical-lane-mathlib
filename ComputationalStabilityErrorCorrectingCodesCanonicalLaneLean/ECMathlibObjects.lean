import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean

abbrev BitString := List Bool
abbrev CodeWordSet := Set BitString

structure Encoder where
  encode : BitString → BitString

structure Decoder where
  decode : BitString → BitString

structure ErrorModel where
  maxErrors : Nat

structure ErrorCorrectingCode where
  codewordSet : CodeWordSet
  encoder : Encoder
  decoder : Decoder
  errorModel : ErrorModel
  minDistance : Nat

def Decodes (D : Decoder) (C : CodeWordSet) : Prop :=
  ∀ (x : BitString), (∃ c ∈ C, ∀ i, D.decode x[i] = c[i]) → x ∈ C

end ComputationalStabilityErrorCorrectingCodesCanonicalLaneLean
end HautevilleHouse