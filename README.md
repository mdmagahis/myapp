myapp
=====

An OTP application to reverse a string of words while preserving character order within each word and truncating trailing whitespace

Build
-----

    $ rebar3 compile

Consume
-----

    $ rebar3 shell
    ===> Verifying dependencies...
    ===> Compiling myapp
    Erlang/OTP 21 [erts-10.3.5.13] [source] [64-bit] [smp:4:4] [ds:4:4:10] [async-threads:1] [hipe]

    Eshell V10.3.5.13  (abort with ^G)
    1> ===> The rebar3 shell is a development tool; to deploy applications in production, consider using releases (http://www.rebar3.org/docs/releases)
    ===> Booted myapp
    1> myapp:start().
    you are How
    ok
    2>
