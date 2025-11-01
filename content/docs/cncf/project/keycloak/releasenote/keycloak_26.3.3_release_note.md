来源: https://github.com/keycloak/keycloak/releases/tag/26.3.3

# keycloak/keycloak 26.3.3 Release Notes

Published at: 2025-08-20T10:12:51Z

<div>

<h2>Upgrading</h2>
<p>Before upgrading refer to <a href="https://www.keycloak.org/docs/latest/upgrading/#migration-changes">the migration guide</a> for a complete list of changes.</p>

<h2>All resolved issues</h2>



<h3>Enhancements</h3>
<ul>
<li><a href="https://github.com/keycloak/keycloak/issues/41558">#41558</a> Ensure cache configuration has correct number of owners </li>
<li><a href="https://github.com/keycloak/keycloak/issues/41934">#41934</a> Infinispan 15.0.19.Final </li>
<li><a href="https://github.com/keycloak/keycloak/issues/41963">#41963</a> Upgrade to Quarkus 3.20.2.1 <code>dist/quarkus</code></li>
</ul>

<h3>Bugs</h3>
<ul>
<li><a href="https://github.com/keycloak/keycloak/issues/39562">#39562</a> Breaking template change: Unknown `locale` input field added to user-profile registration page <code>user-profile</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/40984">#40984</a> Backchannel logout token with an unexpected signature algorithm key <code>oidc</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41023">#41023</a> Can't send e-mails to international e-mail addresses: bad UTF-8 syntax <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41098">#41098</a> Locked out after upgrade to 26.3.1 due to missing sub in lightweight access token <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41268">#41268</a> `--optimized` flag and providers jar are incompatible when used with tools changing `last-modify-date` <code>dist/quarkus</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41290">#41290</a> Concurrent starts with JDBC_PING lead to a split cluster <code>infinispan</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41390">#41390</a> JDBC_PING2 doesn't merge split clusters after a while <code>infinispan</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41421">#41421</a> Broken link securing-cache-communication in caching docs <code>docs</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41423">#41423</a> Duplicate IDs in generated all configuration docs <code>docs</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41469">#41469</a> Uncaught exception cases unclosed spans in tracing <code>dist/quarkus</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41488">#41488</a> Synchronize Maven surefire plugin with Quarkus <code>dist/quarkus</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41491">#41491</a> ExternalLinks are broken in documentation <code>docs</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41520">#41520</a> LDAP Import: KERBEROS_PRINCIPAL not updated when UserPrincipal changes and KERBEROS_PRINCIPAL was null on creation <code>ldap</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41532">#41532</a> LDAP Sync all users takes unexpectedly long in 26.3 (> 30 min) <code>ldap</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41537">#41537</a> Getting error 405 "Method Not Allowed" when calling the "certs" endpoint with HEAD method <code>oidc</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41643">#41643</a> Test SMTP connection fails when no port is specified <code>admin/api</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41663">#41663</a> Typo in the caching doc <code>docs</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41677">#41677</a> Provider default regression <code>dist/quarkus</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41808">#41808</a> CVE-2025-7962 In Jakarta Mail 2.0.2 it is possible to preform a SMTP Injection by utilizing the \r and \n UTF-8 characters to separate different messages <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41842">#41842</a> memberOf attribute empty or values with a DN that does not match the role base DN fetches all roles <code>ldap</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41906">#41906</a> Backwards incompatible changes to 26.3.0 cause NullPoointerException when requesting /certificates/jwt.credential/generate-and-download <code>authentication</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41945">#41945</a> After upgrade to 26.3: Not possible to use Credentials having not-unique label <code>login/ui</code></li>
</ul>

</div>