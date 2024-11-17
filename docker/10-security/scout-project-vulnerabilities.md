<h2>:mag: Vulnerabilities of <code>.</code></h2>

<details open="true"><summary>:package: Image Reference</strong> <code>.</code></summary>
<table>
<tr><td>vulnerabilities</td><td><img alt="critical: 0" src="https://img.shields.io/badge/critical-0-lightgrey"/> <img alt="high: 4" src="https://img.shields.io/badge/high-4-e25d68"/> <img alt="medium: 5" src="https://img.shields.io/badge/medium-5-fbb552"/> <img alt="low: 1" src="https://img.shields.io/badge/low-1-fce1a9"/> <!-- unspecified: 0 --></td></tr>
<tr><td>packages</td><td>67</td></tr>
</table>
</details></table>
</details>

<table>
<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 1" src="https://img.shields.io/badge/H-1-e25d68"/> <img alt="medium: 2" src="https://img.shields.io/badge/M-2-fbb552"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>express</strong> <code>4.17.1</code> (npm)</summary>

<small><code>pkg:npm/express@4.17.1</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2022-24999?s=gitlab&n=express&t=npm&vr=%3C4.17.3"><img alt="high 7.5: CVE--2022--24999" src="https://img.shields.io/badge/CVE--2022--24999-lightgrey?label=high%207.5&labelColor=e25d68"/></a> <i>OWASP Top Ten 2017 Category A9 - Using Components with Known Vulnerabilities</i>

<table>
<tr><td>Affected range</td><td><code><4.17.3</code></td></tr>
<tr><td>Fixed version</td><td><code>4.17.3</code></td></tr>
<tr><td>CVSS Score</td><td><code>7.5</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H</code></td></tr>
<tr><td>EPSS Score</td><td><code>1.95%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>89th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

qs before 6.10.3, as used in Express before 4.17.3 and other products, allows attackers to cause a Node process hang for an Express application because an __ proto__ key can be used. In many typical Express use cases, an unauthenticated remote attacker can place the attack payload in the query string of the URL that is used to visit the application, such as a[__proto__]=b&a[__proto__]&a[length]=100000000. The fix was backported to qs 6.9.7, 6.8.3, 6.7.3, 6.6.1, 6.5.3, 6.4.1, 6.3.3, and 6.2.4 (and therefore Express 4.17.3, which has "deps: qs@6.9.7" in its release description, is not vulnerable).

</blockquote>
</details>

<a href="https://scout.docker.com/v/CVE-2024-29041?s=github&n=express&t=npm&vr=%3C4.19.2"><img alt="medium 6.1: CVE--2024--29041" src="https://img.shields.io/badge/CVE--2024--29041-lightgrey?label=medium%206.1&labelColor=fbb552"/></a> <i>Improper Validation of Syntactic Correctness of Input</i>

<table>
<tr><td>Affected range</td><td><code><4.19.2</code></td></tr>
<tr><td>Fixed version</td><td><code>4.19.2</code></td></tr>
<tr><td>CVSS Score</td><td><code>6.1</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.04%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>11th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

### Impact

Versions of Express.js prior to 4.19.2 and pre-release alpha and beta versions before 5.0.0-beta.3 are affected by an open redirect vulnerability using malformed URLs.

When a user of Express performs a redirect using a user-provided URL Express performs an encode [using `encodeurl`](https://github.com/pillarjs/encodeurl) on the contents before passing it to the `location` header. This can cause malformed URLs to be evaluated in unexpected ways by common redirect allow list implementations in Express applications, leading to an Open Redirect via bypass of a properly implemented allow list.

The main method impacted is `res.location()` but this is also called from within `res.redirect()`.

### Patches

https://github.com/expressjs/express/commit/0867302ddbde0e9463d0564fea5861feb708c2dd
https://github.com/expressjs/express/commit/0b746953c4bd8e377123527db11f9cd866e39f94

An initial fix went out with `express@4.19.0`, we then patched a feature regression in `4.19.1` and added improved handling for the bypass in `4.19.2`.

### Workarounds

The fix for this involves pre-parsing the url string with either `require('node:url').parse` or `new URL`. These are steps you can take on your own before passing the user input string to `res.location` or `res.redirect`.

### References

https://github.com/expressjs/express/pull/5539
https://github.com/koajs/koa/issues/1800
https://expressjs.com/en/4x/api.html#res.location

</blockquote>
</details>

<a href="https://scout.docker.com/v/CVE-2024-43796?s=github&n=express&t=npm&vr=%3C4.20.0"><img alt="medium 5.0: CVE--2024--43796" src="https://img.shields.io/badge/CVE--2024--43796-lightgrey?label=medium%205.0&labelColor=fbb552"/></a> <i>Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting')</i>

<table>
<tr><td>Affected range</td><td><code><4.20.0</code></td></tr>
<tr><td>Fixed version</td><td><code>4.20.0</code></td></tr>
<tr><td>CVSS Score</td><td><code>5</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:P/VC:N/VI:N/VA:N/SC:L/SI:L/SA:L</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.05%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>18th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

### Impact

In express <4.20.0, passing untrusted user input - even after sanitizing it - to `response.redirect()` may execute untrusted code

### Patches

this issue is patched in express 4.20.0

### Workarounds

users are encouraged to upgrade to the patched version of express, but otherwise can workaround this issue by making sure any untrusted inputs are safe, ideally by validating them against an explicit allowlist

### Details

successful exploitation of this vector requires the following:

1. The attacker MUST control the input to response.redirect()
1. express MUST NOT redirect before the template appears
1. the browser MUST NOT complete redirection before:
1. the user MUST click on the link in the template


</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 1" src="https://img.shields.io/badge/H-1-e25d68"/> <img alt="medium: 0" src="https://img.shields.io/badge/M-0-lightgrey"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>path-to-regexp</strong> <code>0.1.7</code> (npm)</summary>

<small><code>pkg:npm/path-to-regexp@0.1.7</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2024-45296?s=github&n=path-to-regexp&t=npm&vr=%3C0.1.10"><img alt="high 7.5: CVE--2024--45296" src="https://img.shields.io/badge/CVE--2024--45296-lightgrey?label=high%207.5&labelColor=e25d68"/></a> <i>Inefficient Regular Expression Complexity</i>

<table>
<tr><td>Affected range</td><td><code><0.1.10</code></td></tr>
<tr><td>Fixed version</td><td><code>0.1.10</code></td></tr>
<tr><td>CVSS Score</td><td><code>7.5</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N/E:P</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.04%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>17th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

### Impact

A bad regular expression is generated any time you have two parameters within a single segment, separated by something that is not a period (`.`). For example, `/:a-:b`.

### Patches

For users of 0.1, upgrade to `0.1.10`. All other users should upgrade to `8.0.0`.

These versions add backtrack protection when a custom regex pattern is not provided:

- [0.1.10](https://github.com/pillarjs/path-to-regexp/releases/tag/v0.1.10)
- [1.9.0](https://github.com/pillarjs/path-to-regexp/releases/tag/v1.9.0)
- [3.3.0](https://github.com/pillarjs/path-to-regexp/releases/tag/v3.3.0)
- [6.3.0](https://github.com/pillarjs/path-to-regexp/releases/tag/v6.3.0)

They do not protect against vulnerable user supplied capture groups. Protecting against explicit user patterns is out of scope for old versions and not considered a vulnerability.

Version [7.1.0](https://github.com/pillarjs/path-to-regexp/releases/tag/v7.1.0) can enable `strict: true` and get an error when the regular expression might be bad.

Version [8.0.0](https://github.com/pillarjs/path-to-regexp/releases/tag/v8.0.0) removes the features that can cause a ReDoS.

### Workarounds

All versions can be patched by providing a custom regular expression for parameters after the first in a single segment. As long as the custom regular expression does not match the text before the parameter, you will be safe. For example, change `/:a-:b` to `/:a-:b([^-/]+)`.

If paths cannot be rewritten and versions cannot be upgraded, another alternative is to limit the URL length. For example, halving the attack string improves performance by 4x faster.

### Details

Using `/:a-:b` will produce the regular expression `/^\/([^\/]+?)-([^\/]+?)\/?$/`. This can be exploited by a path such as `/a${'-a'.repeat(8_000)}/a`. [OWASP](https://owasp.org/www-community/attacks/Regular_expression_Denial_of_Service_-_ReDoS) has a good example of why this occurs, but the TL;DR is the `/a` at the end ensures this route would never match but due to naive backtracking it will still attempt every combination of the `:a-:b` on the repeated 8,000 `-a`.

Because JavaScript is single threaded and regex matching runs on the main thread, poor performance will block the event loop and can lead to a DoS. In local benchmarks, exploiting the unsafe regex will result in performance that is over 1000x worse than the safe regex. In a more realistic environment using Express v4 and 10 concurrent connections, this translated to average latency of ~600ms vs 1ms.

### References

* [OWASP](https://owasp.org/www-community/attacks/Regular_expression_Denial_of_Service_-_ReDoS)
* [Detailed blog post](https://blakeembrey.com/posts/2024-09-web-redos/)

</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 1" src="https://img.shields.io/badge/H-1-e25d68"/> <img alt="medium: 0" src="https://img.shields.io/badge/M-0-lightgrey"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>body-parser</strong> <code>1.19.0</code> (npm)</summary>

<small><code>pkg:npm/body-parser@1.19.0</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2024-45590?s=github&n=body-parser&t=npm&vr=%3C1.20.3"><img alt="high 7.5: CVE--2024--45590" src="https://img.shields.io/badge/CVE--2024--45590-lightgrey?label=high%207.5&labelColor=e25d68"/></a> <i>Asymmetric Resource Consumption (Amplification)</i>

<table>
<tr><td>Affected range</td><td><code><1.20.3</code></td></tr>
<tr><td>Fixed version</td><td><code>1.20.3</code></td></tr>
<tr><td>CVSS Score</td><td><code>7.5</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.05%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>18th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

### Impact

body-parser <1.20.3 is vulnerable to denial of service when url encoding is enabled. A malicious actor using a specially crafted payload could flood the server with a large number of requests, resulting in denial of service.

### Patches

this issue is patched in 1.20.3

### References


</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 1" src="https://img.shields.io/badge/H-1-e25d68"/> <img alt="medium: 0" src="https://img.shields.io/badge/M-0-lightgrey"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>qs</strong> <code>6.7.0</code> (npm)</summary>

<small><code>pkg:npm/qs@6.7.0</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2022-24999?s=github&n=qs&t=npm&vr=%3E%3D6.7.0%2C%3C6.7.3"><img alt="high 7.5: CVE--2022--24999" src="https://img.shields.io/badge/CVE--2022--24999-lightgrey?label=high%207.5&labelColor=e25d68"/></a> <i>Improperly Controlled Modification of Object Prototype Attributes ('Prototype Pollution')</i>

<table>
<tr><td>Affected range</td><td><code>>=6.7.0<br/><6.7.3</code></td></tr>
<tr><td>Fixed version</td><td><code>6.7.3</code></td></tr>
<tr><td>CVSS Score</td><td><code>7.5</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H</code></td></tr>
<tr><td>EPSS Score</td><td><code>1.95%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>89th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

qs before 6.10.3 allows attackers to cause a Node process hang because an `__ proto__` key can be used. In many typical web framework use cases, an unauthenticated remote attacker can place the attack payload in the query string of the URL that is used to visit the application, such as `a[__proto__]=b&a[__proto__]&a[length]=100000000`. The fix was backported to qs 6.9.7, 6.8.3, 6.7.3, 6.6.1, 6.5.3, 6.4.1, 6.3.3, and 6.2.4.

</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 0" src="https://img.shields.io/badge/H-0-lightgrey"/> <img alt="medium: 1" src="https://img.shields.io/badge/M-1-fbb552"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>serve-static</strong> <code>1.14.1</code> (npm)</summary>

<small><code>pkg:npm/serve-static@1.14.1</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2024-43800?s=github&n=serve-static&t=npm&vr=%3C1.16.0"><img alt="medium 5.0: CVE--2024--43800" src="https://img.shields.io/badge/CVE--2024--43800-lightgrey?label=medium%205.0&labelColor=fbb552"/></a> <i>Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting')</i>

<table>
<tr><td>Affected range</td><td><code><1.16.0</code></td></tr>
<tr><td>Fixed version</td><td><code>1.16.0</code></td></tr>
<tr><td>CVSS Score</td><td><code>5</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:P/VC:N/VI:N/VA:N/SC:L/SI:L/SA:L</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.05%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>22nd percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

### Impact

passing untrusted user input - even after sanitizing it - to `redirect()` may execute untrusted code

### Patches

this issue is patched in serve-static 1.16.0

### Workarounds

users are encouraged to upgrade to the patched version of express, but otherwise can workaround this issue by making sure any untrusted inputs are safe, ideally by validating them against an explicit allowlist

### Details

successful exploitation of this vector requires the following:

1. The attacker MUST control the input to response.redirect()
1. express MUST NOT redirect before the template appears
1. the browser MUST NOT complete redirection before:
1. the user MUST click on the link in the template


</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 0" src="https://img.shields.io/badge/H-0-lightgrey"/> <img alt="medium: 1" src="https://img.shields.io/badge/M-1-fbb552"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>send</strong> <code>0.17.1</code> (npm)</summary>

<small><code>pkg:npm/send@0.17.1</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2024-43799?s=github&n=send&t=npm&vr=%3C0.19.0"><img alt="medium 5.0: CVE--2024--43799" src="https://img.shields.io/badge/CVE--2024--43799-lightgrey?label=medium%205.0&labelColor=fbb552"/></a> <i>Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting')</i>

<table>
<tr><td>Affected range</td><td><code><0.19.0</code></td></tr>
<tr><td>Fixed version</td><td><code>0.19.0</code></td></tr>
<tr><td>CVSS Score</td><td><code>5</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:P/VC:N/VI:N/VA:N/SC:L/SI:L/SA:L</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.05%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>18th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

### Impact

passing untrusted user input - even after sanitizing it - to `SendStream.redirect()` may execute untrusted code

### Patches

this issue is patched in send 0.19.0

### Workarounds

users are encouraged to upgrade to the patched version of express, but otherwise can workaround this issue by making sure any untrusted inputs are safe, ideally by validating them against an explicit allowlist

### Details

successful exploitation of this vector requires the following:

1. The attacker MUST control the input to response.redirect()
1. express MUST NOT redirect before the template appears
1. the browser MUST NOT complete redirection before:
1. the user MUST click on the link in the template


</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 0" src="https://img.shields.io/badge/H-0-lightgrey"/> <img alt="medium: 1" src="https://img.shields.io/badge/M-1-fbb552"/> <img alt="low: 0" src="https://img.shields.io/badge/L-0-lightgrey"/> <!-- unspecified: 0 --><strong>ejs</strong> <code>3.1.9</code> (npm)</summary>

<small><code>pkg:npm/ejs@3.1.9</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2024-33883?s=github&n=ejs&t=npm&vr=%3C3.1.10"><img alt="medium 4.0: CVE--2024--33883" src="https://img.shields.io/badge/CVE--2024--33883-lightgrey?label=medium%204.0&labelColor=fbb552"/></a> <i>Improperly Controlled Modification of Object Prototype Attributes ('Prototype Pollution')</i>

<table>
<tr><td>Affected range</td><td><code><3.1.10</code></td></tr>
<tr><td>Fixed version</td><td><code>3.1.10</code></td></tr>
<tr><td>CVSS Score</td><td><code>4</code></td></tr>
<tr><td>CVSS Vector</td><td><code>CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:L/SC:N/SI:N/SA:N</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.13%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>49th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

The ejs (aka Embedded JavaScript templates) package before 3.1.10 for Node.js lacks certain pollution protection.

</blockquote>
</details>
</details></td></tr>

<tr><td valign="top">
<details><summary><img alt="critical: 0" src="https://img.shields.io/badge/C-0-lightgrey"/> <img alt="high: 0" src="https://img.shields.io/badge/H-0-lightgrey"/> <img alt="medium: 0" src="https://img.shields.io/badge/M-0-lightgrey"/> <img alt="low: 1" src="https://img.shields.io/badge/L-1-fce1a9"/> <!-- unspecified: 0 --><strong>cookie</strong> <code>0.4.0</code> (npm)</summary>

<small><code>pkg:npm/cookie@0.4.0</code></small><br/>
<a href="https://scout.docker.com/v/CVE-2024-47764?s=github&n=cookie&t=npm&vr=%3C0.7.0"><img alt="low : CVE--2024--47764" src="https://img.shields.io/badge/CVE--2024--47764-lightgrey?label=low%20&labelColor=fce1a9"/></a> <i>Improper Neutralization of Special Elements in Output Used by a Downstream Component ('Injection')</i>

<table>
<tr><td>Affected range</td><td><code><0.7.0</code></td></tr>
<tr><td>Fixed version</td><td><code>0.7.0</code></td></tr>
<tr><td>EPSS Score</td><td><code>0.04%</code></td></tr>
<tr><td>EPSS Percentile</td><td><code>17th percentile</code></td></tr>
</table>

<details><summary>Description</summary>
<blockquote>

### Impact

The cookie name could be used to set other fields of the cookie, resulting in an unexpected cookie value. For example, `serialize("userName=<script>alert('XSS3')</script>; Max-Age=2592000; a", value)` would result in `"userName=<script>alert('XSS3')</script>; Max-Age=2592000; a=test"`, setting `userName` cookie to `<script>` and ignoring `value`.

A similar escape can be used for `path` and `domain`, which could be abused to alter other fields of the cookie.

### Patches

Upgrade to 0.7.0, which updates the validation for `name`, `path`, and `domain`.

### Workarounds

Avoid passing untrusted or arbitrary values for these fields, ensure they are set by the application instead of user input.

### References

* https://github.com/jshttp/cookie/pull/167

</blockquote>
</details>
</details></td></tr>
</table>

