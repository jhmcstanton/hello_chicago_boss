FROM library/erlang:19.0

# INSTALL HELLO_CHICAGO_BOSS
COPY . /hello_chicago_boss/ 
     
WORKDIR /hello_chicago_boss

EXPOSE 8001

RUN ./rebar clean \
  && make get-deps compile

CMD exec /bin/bash -c "trap : TERM INT; /hello_chicago_boss/init.sh start; sleep infinity & wait"