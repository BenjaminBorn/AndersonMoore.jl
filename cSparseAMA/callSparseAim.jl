Libdl.push!(Libdl.DL_LOAD_PATH,
                "/msu/home/m1gmt00/summer_project/AMA.jl/cSparseAMA/src")
                
global const clibrary = Libdl.find_library("libSPARSEAMA", Libdl.DL_LOAD_PATH)

function callSparseAim( hh, leads, lags )

    neq = size(hh, 1)
    nstate = 0
    hrows = neq
    hcols = size(hh, 2)
    qmax = length(hh)
    returnCodePointer = 0
    cofb = zeros(neq, neq)
    qmatrix = zeros(hrows, hcols)

    
    ccall((:callSparseAim, clibrary), Void,
          (  Ptr{Float64}, Int32, Int32, Int32, Int32,
          Int32, Int32, Int32,
          Ptr{Float64}, Ptr{Float64}, Ptr{Float64}  ),
          hh, hrows, hcols, neq, leads, lags, nstate,
          qmax, &returnCodePointer, cofb, qmatrix)

    
    return hh, cofb, qmatrix
end