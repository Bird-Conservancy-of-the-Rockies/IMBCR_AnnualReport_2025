##Run this code after rendering index.qmd file and after the reviewing the html chapters, probably a more elegant way
#to do this, but this is what I came up with after conferring with Gemini 

#need to load this package
library(pdftools)

#be sure to set the WD to the "docs" filder where html files are stored
setwd("C:/Users/jennifer.timmer/Desktop/IMBCR-annual-reports/IMBCR_AnnualReport_2025/docs")

#run the below code if needed to see how R actually recognizes each html chapter:
list.files(pattern = "\\.html$")

#then create a pdf of each indiv chapter
pagedown::chrome_print("index.html", output = "cover-pg.pdf")
pagedown::chrome_print("2-about-us.html", output = "about-us.pdf")
pagedown::chrome_print("3-exec-summary.html", output = "exec-summary.pdf")
pagedown::chrome_print("4-tables-figures.html", output = "tables-figures.pdf")
pagedown::chrome_print("5-intro.html", output = "intro.pdf")
pagedown::chrome_print("6-methods.html", output = "methods.pdf",timeout=120,wait=10) #this chap times out, treid a couple things, it
#might be that the fig's are high rez. Easy fix is to to open this chap in chrome and control +P to save it indiv in the "docs" folder,
#then stitch it back in w/the other ch's
pagedown::chrome_print("7-results.html", output = "results.pdf")
pagedown::chrome_print("8-usfs.html", output = "usfs.pdf")
pagedown::chrome_print("9-blm.html", output = "blm.pdf")
pagedown::chrome_print("10-dod.html", output = "dod.pdf")
pagedown::chrome_print("11-nps.html", output = "nps.pdf")
pagedown::chrome_print("12-tribal.html", output = "tribal.pdf")
pagedown::chrome_print("13-bcr.html", output = "bcr.pdf")
pagedown::chrome_print("14-co.html", output = "co.pdf")
pagedown::chrome_print("15-ks.html", output = "ks.pdf")
pagedown::chrome_print("16-mt.html", output = "mt.pdf")
pagedown::chrome_print("17-ne.html", output = "ne.pdf")
pagedown::chrome_print("18-nm.html", output = "nm.pdf")
pagedown::chrome_print("19-nd.html", output = "nd.pdf")
pagedown::chrome_print("20-ok.html", output = "ok.pdf")
pagedown::chrome_print("21-sd.html", output = "sd.pdf")
pagedown::chrome_print("22-tx.html", output = "tx.pdf")
pagedown::chrome_print("23-ut.html", output = "ut.pdf")
pagedown::chrome_print("24-wy.html", output = "wy.pdf")
pagedown::chrome_print("25-applications.html", output = "applications.pdf")
pagedown::chrome_print("26-special-feature.html", output = "special-feature.pdf")
pagedown::chrome_print("27-conclusion.html", output = "conclusion.pdf")
pagedown::chrome_print("28-references.html", output = "references.pdf")
pagedown::chrome_print("29-rmadc.html", output = "rmadc.pdf")
pagedown::chrome_print("30-history.html", output = "history.pdf")
pagedown::chrome_print("31-protocol-changes.html", output = "protocol-changes.pdf")
#pagedown::chrome_print("32-analysis.html", output = "analysis.pdf") #this appendix incl a lot of equations and ran into
#same issue with methods ch, just open it in chrome & save it indiv as pdf, then stitch back in

# finally, Create a list of the PDFs in order 
files <- c("cover-pg.pdf", "about-us.pdf","exec-summary.pdf","tables-figures.pdf",
           "intro.pdf","methods.pdf","results.pdf","usfs.pdf","blm.pdf","dod.pdf","nps.pdf","tribal.pdf",
           "bcr.pdf","co.pdf","ks.pdf","mt.pdf","ne.pdf","nm.pdf","nd.pdf","ok.pdf","sd.pdf","tx.pdf","ut.pdf","wy.pdf",
          "applications.pdf","special-feature.pdf","conclusion.pdf","references.pdf","rmadc.pdf",
           "history.pdf","protocol-changes.pdf","analysis.pdf") 

# Combine into one pdf file 
pdf_combine(files, output = "IMBCR_Annual_Report.pdf")
