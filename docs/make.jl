using Documenter
using MatterMost

DocMeta.setdocmeta!(MatterMost, :DocTestSetup, :(using MatterMost); recursive=true)

makedocs(;
    modules=[MatterMost],
    checkdocs=:none,
    authors="azzaare <jf@baffier.fr> and contributors",
    repo="https://github.com/Azzaare/MatterMost.jl/blob/{commit}{path}#{line}",
    sitename="MatterMost.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Azzaare.github.io/MatterMost.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Azzaare/MatterMost.jl",
    devbranch="main",
)
