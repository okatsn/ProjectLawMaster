using JSON, CorpusCleanerForTWLaws
using ProjectLawMaster

rawcorpus = JSON.parsefile(ProjectLawMaster.project_dir("corpus", "judicial_yuan_qa.json"))

#
vcat([keys(d) for d in rawcorpus]...) |> unique
