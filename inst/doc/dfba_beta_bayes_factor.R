## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(DFBA)

## -----------------------------------------------------------------------------
dfba_beta_bayes_factor(a_post = 17, # a_post = n1 + 1
                       b_post = 5,  # b_post = n2 + 1
                       method = "interval", 
                       H0 = c(0, .5))

## -----------------------------------------------------------------------------
dfba_beta_bayes_factor(a_post = 16.5, # a_post = n1 + 0.5
                       b_post = 4.5,  # b_post = n2 + 0.5
                       method = "interval",
                       c(0, .5),
                       a0 = .5,
                       b0 = .5)

## -----------------------------------------------------------------------------
dfba_beta_bayes_factor(a_post = 273,
                       b_post = 278,
                       method = "interval",
                       H0 = c(.4975, .5025))

## -----------------------------------------------------------------------------
dfba_beta_bayes_factor(a_post = 273,
                       b_post = 278,
                       method = "point",
                       H0 = .5)

## -----------------------------------------------------------------------------
dfba_beta_bayes_factor(a_post = 273,
                       b_post = 278,
                       method = "point",
                       H0 = .65)

