%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc TEMPLATE.

-module(mask).
-author('author <author@example.com>').
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.

%% @spec start() -> ok
%% @doc Start the mask server.
start() ->
    mask_deps:ensure(),
    ensure_started(crypto),
    application:start(mask).

%% @spec stop() -> ok
%% @doc Stop the mask server.
stop() ->
    Res = application:stop(mask),
    application:stop(crypto),
    Res.
