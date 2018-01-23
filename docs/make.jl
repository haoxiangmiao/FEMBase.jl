# This file is a part of JuliaFEM.
# License is MIT: see https://github.com/JuliaFEM/FEMBase.jl/blob/master/LICENSE

using Documenter, FEMBase

cp("../README.md", "src/index.md"; remove_destination=true)

DEVELOPER_GUIDE = [
          "mesh.md",
          "fields.md",
          "basis.md",
          "integration.md",
          "elements.md",
          "problems.md",
          "solvers.md",
          "postprocessing.md",
          "results.md",
          "materials.md"]

LIBRARY = ["api.md"]

PAGES = [
         "Home" => "index.md",
         "Developing JuliaFEM" => DEVELOPER_GUIDE,
         "Library" => LIBRARY
        ]

makedocs(modules=[FEMBase],
         format = :html,
         checkdocs = :all,
         sitename = "FEMBase.jl",
         authors = "Jukka Aho",
         analytics = "UA-83590644-1",
         pages = PAGES)