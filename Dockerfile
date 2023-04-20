FROM rocker/shiny:4.2.1

RUN rm -rf /srv/shiny-server/*

COPY . /srv/shiny-server/

ENV RENV_CONFIG_REPOS_OVERRIDE=https://packagemanager.posit.co/cran/__linux__/focal/latest/

RUN R -e "setwd('/srv/shiny-server');install.packages(c('renv', 'jsonlite')); renv::restore()"

# run container with 
# docker run -v /tmp:/tmp -p 3838:3838 shinyproduction