# Changelog

- [GitHub releases](https://github.com/joschi/go-junit-report/releases)
- [Old GitHub releases](https://github.com/jstemmer/go-junit-report/releases)

## [2.1.0](https://github.com/jstemmer/go-junit-report/releases/tag/v2.1.0) (2023-10-19)

- Fix jstemmer/go-junit-report#147: Make timestamps in generated report more accurate.
- Fix jstemmer/go-junit-report#140: Escape illegal XML characters in junit output.
- Fix jstemmer/go-junit-report#145: Handle build errors in test packages with the `_test` suffix.
- Fix jstemmer/go-junit-report#145: Don't ignore build errors that did not belong to a package.
- Fix jstemmer/go-junit-report#134: Json test output was not parsed correctly when using the `-race` flag in `go test`.
- Add support for `=== NAME` lines introduced in Go1.20
- junit: Add File attribute to `testsuite`.
- junit: Allow multiple properties with the same name.
- junit: Add the `Testsuites.WriteXML` convenience method.

## [2.0.0](https://github.com/jstemmer/go-junit-report/releases/tag/v2.0.0) (2022-07-01)

- Support for parsing `go test -json` output.
- Distinguish between build/runtime errors and test failures.
- JUnit report now includes output for all tests and benchmarks, and global output that doesn't belong to any test.
- Use full Go package name in generated report instead of only last path segment.
- Add support for reading skipped/failed benchmarks.
- Add `-subtest-mode` flag to exclude or ignore results of subtest parent tests.
- Add `-in` and `-out` flags for specifying input and output files respectively.
- Add `-iocopy` flag to copy stdin directly to stdout.
- Add `-prop` flags to set key/value properties in generated report.
- Add `-parser` flag to switch between regular `go test` (default) and `go test -json` parsing.
- Output in JUnit XML is written in `<![CDATA[]]>` tags for improved readability.
- Add `hostname`, `timestamp` and `id` attributes to JUnit XML.
- Improve accuracy of benchmark time calculation and update formatting in report.
- No longer strip leading whitespace from test output.
- The `formatter` and `parser` packages have been replaced with `junit` and `parser/gotest` packages respectively.
- Add support for parsing lines longer than 64KiB.
- The JUnit errors/failures attributes are now required fields.
- Drop support for parsing pre-Go1.13 test output.
- Deprecate `-go-version` flag.
