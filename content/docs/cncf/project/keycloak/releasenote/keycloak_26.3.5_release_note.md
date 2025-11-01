来源: https://github.com/keycloak/keycloak/releases/tag/26.3.5

# keycloak/keycloak 26.3.5 Release Notes

Published at: 2025-09-25T06:23:28Z

<div>

<h2>Upgrading</h2>
<p>Before upgrading refer to <a href="https://www.keycloak.org/docs/latest/upgrading/#migration-changes">the migration guide</a> for a complete list of changes.</p>

<h2>All resolved issues</h2>



<h3>Enhancements</h3>
<ul>
<li><a href="https://github.com/keycloak/keycloak/issues/41371">#41371</a> Upgrade to Quarkus 3.20.3 LTS <code>dist/quarkus</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41373">#41373</a> Remove explicit MariaDB connector dependency <code>dist/quarkus</code></li>
</ul>

<h3>Bugs</h3>
<ul>
<li><a href="https://github.com/keycloak/keycloak/issues/41418">#41418</a> Access to user details for restricted admin fails after enabling organizationin realm <code>organizations</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42405">#42405</a> Old hmac-generated (32bit) is recreated when order is changed in realm keys ui <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42491">#42491</a> CVE-2025-58057 - Netty BrotliDecoder / Data Amplification vulnerability <code>dist/quarkus</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42492">#42492</a> CVE-2025-58056 - Netty HTTP Request Smuggling vulnerability <code>dist/quarkus</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42736">#42736</a> Reset password in admin UI with 'not recently used' password policy leads to error 'Device already exists with the same name' <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42769">#42769</a> Missing switch "ID Token as detached signature" in the admin console client settings <code>oidc</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42922">#42922</a> Dynamic Client Registration invalidates the realm cache <code>core</code></li>
</ul>

</div>