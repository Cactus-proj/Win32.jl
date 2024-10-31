using Win32
using Documenter

DocMeta.setdocmeta!(Win32, :DocTestSetup, :(using Win32); recursive=true)

makedocs(;
    modules=[Win32],
    authors="Chengyu HAN <cyhan.dev@outlook.com> and contributors",
    sitename="Win32.jl",
    format=Documenter.HTML(;
        canonical="https://inkydragon.github.io/Win32.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/inkydragon/Win32.jl",
    devbranch="main",
)
