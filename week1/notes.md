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

Compilation takes an `*.erl` file and produces a `*.beam` binary file
Invoking a function needs to call its fully-qualified form, e.g. `first.double(3).`

--------------

Erlang data types
- Numbers : integers (bignums - arbitrarily large with full precision) and floats (different bases supported)
- Atoms : just a piece of data. Can be compared for equality, ordering - can be used in pattern matching. Can match against atoms as components of bigger data structures
- Booleans : special atoms `true`, `false`
- Tuples and Lists : a `tuple` has a number of pieces of data. Common idiom: first field in a tuple indicates what sort of data the tuple represents. Typically, tuples are heterogeneous and lists are homogeneous. A tuple is built at one go while a list can be built up iteratively.
- Strings : a string is a list of characters
- Functions : can be data, or can be arguments or return values of other functions

--------------

Variables and Pattern Matching

- Erlang has single assignment variables
- if a variable is not set (bound), `=` assigns it a value
- else if the variable has been set, `=` performs a match operation
- variables are not variant - we use them to name values and to define other values. Only in the shell can we forget bindings
- hence we can't use loops. Instead we use recursion
- functions can have multiple clauses, separated by semi-colons and matched sequantially - use the first clause that matches successfully

--------------
