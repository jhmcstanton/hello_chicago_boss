-module(hello_chicago_boss_greeting_controller, [Req]).
-compile(export_all).

hello('GET', []) ->
    PID = pid_to_list(self()),
    Addr = local_ip_v4(),
    AddrStr = ip_to_string(Addr),
    {output, "Hello, world! I am " ++ PID ++ " at " ++ AddrStr ++ "!"}.

ip_to_string({A, B, C, D}) ->
     integer_to_list(A) ++ "." ++
     integer_to_list(B) ++ "." ++
     integer_to_list(C) ++ "." ++
     integer_to_list(D).

%% Borrowed from stack overflow
local_ip_v4() ->
    {ok, Addrs} = inet:getifaddrs(),
    hd([
        Addr || {_, Opts} <- Addrs, {addr, Addr} <- Opts,
                size(Addr) == 4, Addr =/= {127,0,0,1}
       ]).
