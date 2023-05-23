module RastersGRIBDatasetsExt

@static if isdefined(Base, :get_extension) # julia < 1.9
    using Rasters, GRIBDatasets
else    
    using ..Rasters, ..GRIBDatasets
end

import DiskArrays,
    FillArrays,
    Extents,
    GeoInterface,
    Missings

using Dates, 
    DimensionalData,
    GeoFormatTypes

using Rasters.LookupArrays
using Rasters.Dimensions
using Rasters: GRIBsource

const RA = Rasters
const DD = DimensionalData
const DA = DiskArrays
const GI = GeoInterface
const LA = LookupArrays

include("gribdatasets_source.jl")

end
