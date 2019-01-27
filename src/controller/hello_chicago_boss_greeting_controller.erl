-module(hello_chicago_boss_greeting_controller, [Req]).
-compile(export_all).

hello('GET', []) ->
    PID = pid_to_list(self()),
    {output, "Hello, world! I am " ++ PID ++ "!"}.
