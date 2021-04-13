library(mpsCVR)
#library(RefManageR)


peer_review <- fs::path_wd("Resume/peer_review.bib")
tech_report <- fs::path_wd("Resume/tech_report.bib")
conference <- fs::path_wd("Resume/conference.bib")
software <- fs::path_wd("Resume/software.bib")
datasets <- fs::path_wd("Resume/datasets.bib")


build_cv(full_name = "Michael Schramm",
         data_location = "https://docs.google.com/spreadsheets/d/1oeMexIuFWJIJa-xofMLqSvPtg49VceJqM2y3YDqcW-4/edit?usp=sharing",
         peer_review = peer_review,
         tech_report = tech_report,
         software = software,
         output_file_name = "schramm_resume.pdf",
         output_dir = here::here("Resume"),
         rmd_template = "yaac")

