% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scrapePage.R
\name{scrapePage}
\alias{scrapePage}
\title{Scrapes the provided url}
\usage{
scrapePage(url, numAttempts, sleepTime = 0)
}
\arguments{
\item{url}{string. The url of the page to be scraped (Note: 
http://www.betfair.com is valid, while www.betfair.com is not valid). 
Required. No default.}

\item{numAttempts}{integer. Specifies the number of attempts before aborting 
this particular scraping attempt. Required. No default.}

\item{sleepTime}{integer. THis parameter specifies the amount of time (in
seconds) the function waits following a failed scraping attempt. Required.
Default is 0.}
}
\value{
If successful, this function will return an xml_document, which
  contains various web page data (e.g. nodes and links). If all scraping
  attempts failed, a dataframe outlining the source of the last error is
  returned.
}
\description{
\code{scrapePage} is a general (i.e. not sport specific) function that
scrapes the provided url and includes basic error handling in the event of
repeated failures. It creates a local variable called page, which is
initialised to NULL. If the scraping attempt is successful, page is converted
to an XML document. THe function will retry until success or the specified
number of attempts has been exceeded. An additional parameter specifies the
time to wait between attempts.
}
\examples{
\dontrun{

# Simple example of a valid function construction (with no wait betwen successive attempts):

scrapePage("http://www.betfair.com",2)


# Simple example of an invalid function construction (with a 5 s wait betwen successive attempts):
# Just note the difference in the output structure in both cases

scrapePage("www.betfair.com",2,5)

}
}
\seealso{
\url{https://cran.r-project.org/web/packages/rvest/rvest.pdf} for
general information on easily harvesting (scraping) web pages.
}

