FROM r-base:4.2.3
COPY ./MPA_0.1.0.tar.gz /tmp/ 

RUN R -e "options(warn=2); install.packages('dplyr')"
RUN R -e "options(warn=2); install.packages('/tmp/MPA_0.1.0.tar.gz', type='source')"

RUN rm -f /tmp/MPA_0.1.0.tar.gz

WORKDIR /usr/local/src/MPA

COPY ./runMPA_example.R ./

CMD Rscript runMPA_example.R


