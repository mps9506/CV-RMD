library(CVR)
library(RefManageR)


BibOptions(sorting = "none")

##zotero key is privately stored in local env
key <- Sys.getenv("zotero_key")

peer_review <- RefManageR::ReadZotero(group = "2533336",
                                      .params = list(key = key,
                                                   itemType = "journalArticle"))


peer_review <- sort(peer_review, sorting = "ydnt")
peer_review <- peer_review[1:3]

tech_report <- ReadZotero(group = "2533336",
                          .params=list(key = key,
                                       itemType = "report"))
tech_report <- sort(tech_report, sorting = "ydnt")
tech_report <- tech_report[1:3]


software <- ReadZotero(group = "2533336",
                       .params=list(key = key,
                                    itemType = "computerProgram"))


build_cv(full_name = "Michael Schramm",
         data_location = "https://docs.google.com/spreadsheets/d/1oeMexIuFWJIJa-xofMLqSvPtg49VceJqM2y3YDqcW-4/edit?usp=sharing",
         peer_review = peer_review,
         tech_report = tech_report,
         software = software,
         output_file_name = "schramm_resume.pdf",
         output_dir = here::here("Resume"),
         rmd_template = "yaac")

