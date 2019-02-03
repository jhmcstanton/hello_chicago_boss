FROM library/erlang:19.0

# INSTALL HELLO_CHICAGO_BOSS
COPY . /hello_chicago_boss/ 
     
WORKDIR /hello_chicago_boss

EXPOSE 8001

# INSTALL SUPERVISOR + Build Hello_Chicago_Boss
#RUN apt-get update \
#  && apt-get install -y supervisor \
#  && mkdir /var/log/supervisor_logs \
#  && make get-deps \
#  && make compile

RUN ./rebar clean \
  && make get-deps compile

# CMD ["/usr/bin/supervisord"]
CMD ["/hello_chicago_boss/init-dev.sh"]
# CMD ["watch", "-n", "1000", "ls", "."]