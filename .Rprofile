# Create user-specific but not session-specific global settings.
local({
    # Set the default repository.
    r <- getOption("repos")
    r["CRAN"] <- "https://cran.r-project.org"
    r["Sage"] <- "http://ran.synapse.org"
    r["SatijaLab"] <- "https://satijalab.r-universe.dev"
    r["BenParks"] <- "https://bnprks.r-universe.dev"
    options(repos=r)
    utils::setRepositories(ind=c(1:10))

    # Set the number of significant digits.
    options(digits=15)
})

# Put all operations within a session in the .First function.
.First <- function()
{
}

# Put all operations within a session in the .Last function.
.Last <- function()
{
}
