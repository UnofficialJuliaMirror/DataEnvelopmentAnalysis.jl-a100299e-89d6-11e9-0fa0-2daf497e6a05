module DataEnvelopmentAnalysis

    """
        DataEnvelopmentAnalysis
    A Julia package for efficiency and productivity measurement using Data Envelopment Analysis (DEA).
    [DataEnvelopmentAnalysis repository](https://github.com/javierbarbero/DataEnvelopmentAnalysis.jl).
    """

    using JuMP
    using GLPK
    using SparseArrays
    using LinearAlgebra

    using Printf: @sprintf
    using StatsBase: CoefTable

    import StatsBase: nobs


    export
    # Types
    AbstractTechnicalDEAModel, AbstractRadialDEAModel,
    TechnicalDEAModel, RadialDEAModel,
    # Technical models
    dea,
    efficiency,
    nobs, ninputs, noutputs, peers

    # Include code of functions
    include("technical.jl")
    include("dea.jl")

end # module
