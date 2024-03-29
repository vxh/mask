%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the mask application.

-module(mask_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2, stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for mask.
start(_Type, _StartArgs) ->
    mask_deps:ensure(),
    mask_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for mask.
stop(_State) ->
    ok.


%%
%% Tests
%%
-include_lib("eunit/include/eunit.hrl").
-ifdef(TEST).
-endif.
