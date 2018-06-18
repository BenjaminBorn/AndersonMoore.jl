import AMA
using Base.Test

include("defineShiftRightTestFuncs.jl")

@testset "outer"  begin# an outer so that it does't quit on first fail
@testset "test shiftRight" begin
@test ShiftRightTests.firmvalue()
@test ShiftRightTests.firmvalue3Leads2Lags()
@test ShiftRightTests.example7()
@test ShiftRightTests.oneEquationNoLead()
@test ShiftRightTests.reliablePaperExmpl()
@test ShiftRightTests.athan()
@test ShiftRightTests.habitmod()
end


include("defineExactShiftTestFuncs.jl")
@testset "test exactShift" begin
@test ExactShiftTests.firmvalue()
@test ExactShiftTests.firmvalue3Leads2Lags()
@test ExactShiftTests.example7()
@test ExactShiftTests.oneEquationNoLead()
@test ExactShiftTests.reliablePaperExmpl()
@test ExactShiftTests.athan()
@test ExactShiftTests.habitmod()
end


include("../src/numericShift!.jl")
include("defineNumericShiftTestFuncs.jl")
@testset "test numericShift" begin
@test_broken NumericShiftTests.firmvalueTrue()
@test_broken NumericShiftTests.firmvalue3Leads2LagsTrue()
@test_broken NumericShiftTests.example7True()
@test NumericShiftTests.oneEquationNoLeadTrue()
@test_broken NumericShiftTests.reliablePaperExmplTrue()
@test_broken NumericShiftTests.athanTrue()
@test_broken NumericShiftTests.habitmodTrue()
@test NumericShiftTests.firmvalueFalse()
@test NumericShiftTests.firmvalue3Leads2LagsFalse()
@test_broken NumericShiftTests.example7False()
@test NumericShiftTests.oneEquationNoLeadFalse()
@test_broken NumericShiftTests.reliablePaperExmplFalse()
@test NumericShiftTests.athanFalse()
@test_broken NumericShiftTests.habitmodFalse()
end



include("../src/buildA!.jl")
include("defineBuildATestFuncs.jl")
@testset "test buildA" begin
@test BuildATests.firmvalue()
@test BuildATests.firmvalue3Leads2Lags()
@test BuildATests.example7()
@test BuildATests.oneEquationNoLead()
@test BuildATests.reliablePaperExmpl()
@test BuildATests.athan()
@test BuildATests.habitmod()
end



include("../src/eigenSys!.jl")
include("defineEigenSysTestFuncs.jl")
@testset "test eigenSys" begin
@test EigenSysTests.firmvalue()
@test EigenSysTests.firmvalue3Leads2Lags()
@test EigenSysTests.example7()
@test EigenSysTests.oneEquationNoLead()
@test EigenSysTests.reliablePaperExmpl()
@test EigenSysTests.athan()
@test EigenSysTests.habitmod()
end


include("../src/augmentQ!.jl")
include("defineAugmentQTestFuncs.jl")
@testset "test augmentQ" begin
@test_broken AugmentQTests.firmvalue()
@test_broken AugmentQTests.firmvalue3Leads2Lags()
@test_broken AugmentQTests.example7()
@test_broken AugmentQTests.oneEquationNoLead()
@test_broken AugmentQTests.reliablePaperExmpl()
@test_broken AugmentQTests.athan()
@test_broken AugmentQTests.habitmod()
end

    

include("../src/reducedForm.jl")
include("defineReducedFormTestFuncs.jl")
@testset "test reducedForm" begin
@test ReducedFormTests.firmvalue()
@test_broken ReducedFormTests.firmvalue3Leads2Lags()
@test_broken ReducedFormTests.example7()
@test_broken ReducedFormTests.oneEquationNoLead()
@test_broken ReducedFormTests.reliablePaperExmpl()
@test_broken ReducedFormTests.athan()
@test_broken ReducedFormTests.habitmod()
end

    

include("../src/AMAalg.jl")
include("defineAMAalgTestFuncs.jl")
@testset "test AMAalg" begin
@test_broken AMAalgTests.firmvalue()
@test_broken AMAalgTests.firmvalue3Leads2Lags()
@test_broken AMAalgTests.example7()
@test_broken AMAalgTests.oneEquationNoLead()
@test_broken AMAalgTests.reliablePaperExmpl()
@test_broken AMAalgTests.athan()
@test_broken AMAalgTests.habitmod()
end

end #outer


