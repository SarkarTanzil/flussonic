-define(D(X), (case application:get_env(erlmedia, logging_function) of undefined -> io:format("~p:~p ~240p~n", [?MODULE, ?LINE, X]); _ -> (element(2,application:get_env(erlmedia,logging_function)))(?MODULE, ?LINE, X) end)).