Forked from https://github.com/textmate/dialog

## Changed a bit for:

Xcode4, OC2, and case-insensitive completion.

Say if you use a powerful completion command in golang. You type `fmt.` and invoke completion, then it pops a list with Dialog2, with case insensitive option. You filter the list by pressing lower cased `pr`, then press enter, the `fmt.Println(...)` is chosen, but `fmt.println(...)` is inserted -- because Dialog2 could not change what has been typed.

This fork fixed this problem.

## Build

Install xcode4 and command line tools, then

``` sh
    xcodebuild
```

Then it is installed to user dir and overrides the old one.
