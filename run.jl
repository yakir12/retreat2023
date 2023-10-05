path = mktempdir()
cd(path)

import Pkg
Pkg.activate(path)
Pkg.add.(["Git", "Pluto"])

import Git, Pluto

run(Git.git(["clone", "https://github.com/yakir12/retreat2023"]))
Pluto.run(notebook=joinpath("retreat2023", "notebook.jl"))

