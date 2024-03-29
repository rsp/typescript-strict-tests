TypeScript Strict Tests
=

Some minimal TypeScript programs written to work without strict flags and fail with them.

For individual programs, see: [src](src).

Usage
-
Fast test only with Deno and only with flags enabled by `--strict`
(noImplicitAny, noImplicitThis, alwaysStrict, strictBindCallApply,
strictNullChecks, strictFunctionTypes, strictPropertyInitialization):
```
./test-deno.sh
```
or:
```
npm test
```
More tests with comparison to the TypeScript compiler run with and without those flags,
with the same flasg as above plus additional flags that are not enabled by `--strict` by default
(noFallthroughCasesInSwitch, noImplicitReturns, noUnusedLocals, noUnusedParameters):
```
npm install
npm run test:verbose
```
or:
```
npm install
./test-verbose.sh
```

Issues
-
For any bug reports or feature requests please
[post an issue on GitHub][issues-url].

Author
-
[**Rafał Pocztarski**](https://pocztarski.com/)
<br/>
[![Follow on GitHub][github-follow-img]][github-follow-url]
[![Follow on Twitter][twitter-follow-img]][twitter-follow-url]

License
-
MIT License (Expat). See [LICENSE.md](LICENSE.md) for details.

[github-url]: https://github.com/rsp/typescript-strict-tests
[readme-url]: https://github.com/rsp/typescript-strict-tests#readme
[issues-url]: https://github.com/rsp/typescript-strict-tests/issues
[license-url]: https://github.com/rsp/typescript-strict-tests/blob/master/LICENSE.md
[travis-url]: https://travis-ci.org/rsp/typescript-strict-tests
[travis-img]: https://travis-ci.org/rsp/typescript-strict-tests.svg?branch=master
[snyk-url]: https://snyk.io/test/github/rsp/typescript-strict-tests
[snyk-img]: https://snyk.io/test/github/rsp/typescript-strict-tests/badge.svg
[david-url]: https://david-dm.org/rsp/typescript-strict-tests
[david-img]: https://david-dm.org/rsp/typescript-strict-tests/status.svg
[github-follow-url]: https://github.com/rsp
[github-follow-img]: https://img.shields.io/github/followers/rsp.svg?style=social&logo=github&label=Follow
[twitter-follow-url]: https://twitter.com/intent/follow?screen_name=pocztarski
[twitter-follow-img]: https://img.shields.io/twitter/follow/pocztarski.svg?style=social&logo=twitter&label=Follow
[stackoverflow-url]: https://stackoverflow.com/users/613198/rsp
[stackexchange-url]: https://stackexchange.com/users/303952/rsp
[stackexchange-img]: https://stackexchange.com/users/flair/303952.png
