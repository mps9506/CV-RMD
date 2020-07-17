library(CVR)
library(RefManageR)

######

key <- Sys.getenv("zotero_key")

peer_review <- RefManageR::ReadZotero(group = "2533336",
                                      .params = list(key = key,
                                                   itemType = "journalArticle"))

tech_report <- ReadZotero(group = "2533336",
                          .params=list(key = key,
                                       itemType = "report"))

conference <- ReadZotero(group = "2533336",
                         .params=list(key = key,
                                      itemType = "presentation"))

software <- ReadZotero(group = "2533336",
                       .params=list(key = key,
                                    itemType = "computerProgram"))

datasets <- ReadZotero(group = "2533336",
                       .params=list(key = key,
                                    tag = "dataset"))

build_cv(full_name = "Michael Schramm",
         data_location = "https://docs.google.com/spreadsheets/d/1oeMexIuFWJIJa-xofMLqSvPtg49VceJqM2y3YDqcW-4/edit?usp=sharing",
         peer_review = peer_review,
         tech_report = tech_report,
         conference = conference,
         software = software,
         datasets = datasets,
         output_file_name = "schramm-cv-long.pdf",
         output_dir = here::here("/CVR"),
         spell_check = FALSE)
