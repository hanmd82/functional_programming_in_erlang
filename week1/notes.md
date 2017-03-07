Why Erlang?

lightweight fine-grained concurrency
tolerant of failure (hardware components) - 'let it fail' philosophy. Supervision: another process would deal with failure separately
system should be up all the time - hot code upgrades while system is running. Built-in mechanism for swapping in a new piece of code

functional programming is a substrate upon which fine-grained concurrency is built

OTP - an abstraction with generic components for servers, finite-state machines etc

--------------

functional programming languages

Erlang is essentially a calculator with functions and structures. Calculating a value is a result of evaluating an expression
- with more complex functions: we can define functions
- with more complex data: different sorts of data (including functions as data)

function only has values, not references/pointers etc
functional support for high-level patterns, such as map-reduce
no side-effects -> data becomes immutable. Makes algorithms clearer and allows thread-safe programming => safe caching and sharing, and consistency

--------------
