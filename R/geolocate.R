x <- individual[1,]
geosphere::destPoint(p = c(x$decimalLongitude, x$decimalLatitude),
                     b = x$stemAzimuth, d = x$stemDistance)

x <- individual[1:5,]
geosphere::destPoint(p = cbind(x$decimalLongitude, x$decimalLatitude),
                     b = x$stemAzimuth, d = x$stemDistance)

get_stem_location <- function(decimalLongitude, decimalLatitude, stemAzimuth, stemDistance) {
  geosphere::destPoint(p = cbind(decimalLongitude, decimalLatitude),
                       b = stemAzimuth, d = stemDistance) %>%
    tibble::as_tibble()
}

test <- get_stem_location(x$decimalLongitude, x$decimalLatitude,
                          x$stemAzimuth, x$stemDistance)
test

test <- get_stem_location(x$decimalLongitude, x$decimalLatitude,
                  x$stemAzimuth, x$stemDistance)
test

test <- get_stem_location(x$decimalLongitude, x$decimalLatitude,
                  x$stemAzimuth, x$stemDistance)
test




get_stem_location <- function(decimalLongitude, decimalLatitude, stemAzimuth, stemDistance){

  # validation checks
  checkmate::assert_numeric(decimalLongitude)
  checkmate::assert_numeric(decimalLatitude)
  checkmate::assert_numeric(stemAzimuth)
  checkmate::assert_numeric(stemDistance)


  geosphere::destPoint(p = cbind(decimalLongitude, decimalLatitude),
                       b = stemAzimuth, d = stemDistance) %>%
    tibble::as_tibble()
}


get_stem_location <- function(decimalLongitude, decimalLatitude, stemAzimuth, stemDistance){
  # validation checks
  checkmate::assert_numeric(decimalLongitude)
  checkmate::assert_numeric(decimalLatitude)
  checkmate::assert_numeric(stemAzimuth)
  checkmate::assert_numeric(stemDistance)


  out <- geosphere::destPoint(p = cbind(decimalLongitude, decimalLatitude),
                              b = stemAzimuth, d = stemDistance) %>%
    tibble::as_tibble()
}


any(is.na(test))


get_stem_location <- function(decimalLongitude, decimalLatitude, stemAzimuth, stemDistance){
  # validation checks
  checkmate::assert_numeric(decimalLongitude)
  checkmate::assert_numeric(decimalLatitude)
  checkmate::assert_numeric(stemAzimuth)
  checkmate::assert_numeric(stemDistance)


  out <- geosphere::destPoint(p = cbind(decimalLongitude, decimalLatitude),
                              b = stemAzimuth, d = stemDistance) %>%
    tibble::as_tibble()

  checkmate::assert_false(any(is.na(out)))

  return(out)
}

get_stem_location(x$decimalLongitude, x$decimalLatitude,
                  x$stemAzimuth, x$stemDistance)

