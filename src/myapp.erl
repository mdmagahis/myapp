-module(myapp).

-export([start/0]).

-define(STRING, "How    are       you").

start() ->
    say_hello(?STRING, []).

%% --------------------------------------------------------------------
%% Recursively iterate thru a given string
%% --------------------------------------------------------------------
say_hello([], Acc) ->
    io:format("~s ~n", [Acc]); % ~n to move `ok` to newline

% First run
say_hello(String, []) ->
    [Char | StrTail] = String,
    say_hello(StrTail, [[Char]]);

say_hello(String, Acc) when  Acc /= [] ->
    [Char | StrTail] = String,
    [Word | AccTail] = Acc,
    case [Char] of
        % Space
        " " ->
            case Word of
                % Truncate whitespace
                [" "] ->
                    say_hello(StrTail, Acc);
                % Store a single space
                _ ->
                    say_hello(StrTail, [[" "] | Acc])
                end;
        % Any character other than space
        _ ->
            case Word of
                % Preserve space
                [" "] ->
                    say_hello(StrTail, [[Char] | Acc]);
                _ ->
                    say_hello(StrTail,
                          [lists:append(Word, [Char]) | AccTail])
            end
    end.