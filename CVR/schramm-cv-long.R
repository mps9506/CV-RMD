
library(mpsCVR)
#library(RefManageR)


#########
# Notes #
#########

# Does not work with latest pandoc for unknown reason.
# roll back to pandoc ~2.11

# Use better bibtex zotero plugin for exporting .bib from Zotero db
# previously used RefManageR but had issues with fields properly exporting
# and using the notes field to export custom fields. Would be great to
# programatically export the bib files from the local
# Zotero install using the bbt plugin.


peer_review <- fs::path_wd("CVR/peer_review.bib")
tech_report <- fs::path_wd("CVR/tech_report.bib")
conference <- fs::path_wd("CVR/conference.bib")
software <- fs::path_wd("CVR/software.bib")
datasets <- fs::path_wd("CVR/datasets.bib")



build_cv(full_name = "Michael Schramm",
         data_location = "https://docs.google.com/spreadsheets/d/1oeMexIuFWJIJa-xofMLqSvPtg49VceJqM2y3YDqcW-4/edit?usp=sharing",
         peer_review = peer_review,
         tech_report = tech_report,
         conference = conference,
         software = software,
         datasets = datasets,
         output_file_name = "schramm-cv-long.pdf",
         output_dir = here::here("CVR"),
         rmd_template = "svm_cv",
         spell_check = FALSE,
         yml = list(settitle = "CV",
                    setphone = "979-458-9191",
                    setaddress = "578 John Kimbrough Blvd · 2260 TAMU · College Station, TX 77843",
                    setemail = "michael.schramm@ag.tamu.edu"))

