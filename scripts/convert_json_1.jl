
# Please activate the environment of ProjectLawMaster first.

using JSON, CorpusCleanerForTWLaws
using ProjectLawMaster
using StructArrays

rawcorpus = JSON.parsefile(ProjectLawMaster.project_dir("corpus", "judicial_yuan_qa.json"))


vcat([keys(d) for d in rawcorpus]...) |> unique


cps = [CorpusJudicalYuan(d) for d in rawcorpus]

soacps = StructArray(cps)

clean!.(cps)
