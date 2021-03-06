\name{readDOC}
\alias{readDOC}
\title{Read In a MS Word Document}
\description{
  Return a function which reads in a Microsoft Word document extracting
  its text.
}
\usage{
readDOC(AntiwordOptions = "", \dots)
}
\arguments{
  \item{AntiwordOptions}{Options passed over to \command{antiword}.}
  \item{\dots}{Arguments for the generator function.}
}
\details{
  Formally this function is a function generator, i.e., it returns a
  function (which reads in a text document) with a well-defined
  signature, but can access passed over arguments (e.g., options to
  \command{antiword}) via lexical scoping.

  Note that this MS Word reader needs the tool \command{antiword}
  installed and accessible on your system.  This can convert documents
  from Microsoft Word version 2, 6, 7, 97, 2000, 2002 and 2003 to plain
  text, and is available from \url{http://www.winfield.demon.nl/}.
}
\value{
  A \code{function} with the signature \code{elem, language, id}:
  \item{elem}{A \code{list} with the named element \code{uri} of type
  \code{character} which must hold a valid file name.}
  \item{language}{A \code{character} vector giving the text's language.}
  \item{id}{A \code{character} vector representing a unique identification
    string for the returned text document.}
  The function returns a \code{PlainTextDocument} representing the text
  in \code{content}.
}
\seealso{
  \code{\link{getReaders}} to list available reader functions.
}
\author{Ingo Feinerer}
