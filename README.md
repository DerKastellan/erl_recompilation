# ErlTest

Project to demonstrate Erlang recompilation problem.

## Steps

There's mix task that does the necessary copying, but it behaves differently depending when and how it's done.

### Example 1

```
rm -rf _build src/second.erl
# similar situation to first compilation
mix testCopy
```

On my machine I typically see only 1 .erl file compiled.

### Example 2

After having built at least once.

```
rm -rf _build
mix testCopy
```

On my machine I see both erl files compiled.

### Example 3

After having built at least once.

```
rm -f _build/dev/lib/erl_test/ebin/second.beam
mix testCopy
```

On my machine, I see that the .erl is recompiled.

## Conclusion

Example 2 and 3 have their .beam file copied back in, but still compilation happens.


