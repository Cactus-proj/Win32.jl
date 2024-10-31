using JSON

const subdir = "gen"


function read_metadata_version()
    """Check working dir, read metadata version.
    """
    metadata_version = ""

    try
        metadata_version = read(joinpath("gen", "version.txt"), String)
        metadata_version = strip(metadata_version)
    catch SystemError
        err_msg = "Cannot read `version.txt`!"
        err_msg *= "\nYou need to run gen/main.jl in root dir of `Win32.jl`"
        @error err_msg
    end
    if isempty(metadata_version)
        @error "Cannot read win32metadata.json version!"
        exit(-1)
    end
    @info "win32metadata.json version" metadata_version

    metadata_version
end

function main()
    @info "Working dir" pwd()

    metadata_version = read_metadata_version()

end

main()
