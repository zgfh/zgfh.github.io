来源: https://github.com/keycloak/keycloak/releases/tag/26.3.4

# keycloak/keycloak 26.3.4 Release Notes

Published at: 2025-09-12T13:28:51Z

<div>

<h2>Upgrading</h2>
<p>Before upgrading refer to <a href="https://www.keycloak.org/docs/latest/upgrading/#migration-changes">the migration guide</a> for a complete list of changes.</p>

<h2>All resolved issues</h2>



<h3>Enhancements</h3>
<ul>
<li><a href="https://github.com/keycloak/keycloak/issues/40630">#40630</a> Double check when working with multithreading. SAST </li>
<li><a href="https://github.com/keycloak/keycloak/issues/42245">#42245</a> Upgrade to Quarkus 3.20.2.2 </li>
</ul>

<h3>Bugs</h3>
<ul>
<li><a href="https://github.com/keycloak/keycloak/issues/35825">#35825</a> Per client session idle time capped by realm level client idle timeout <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/40374">#40374</a> Random but frequent duplicate key value violates unique constraint \"constraint_offl_us_ses_pk2\" errors <code>authentication</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/40463">#40463</a> Login to Account Console produces two consecutive LOGIN events <code>account/ui</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/40857">#40857</a> Unbounded login_hint Parameter Can Corrupt KC_RESTART Cookie and Break Login Flow <code>oidc</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41427">#41427</a> Parallel token exchange fails if client session is expired <code>token-exchange</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41801">#41801</a> Lack of coordination in database creation in 26.3.0 causes deployment failures (Reopen) <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/41942">#41942</a> Uncaught server error: org.keycloak.models.ModelException: Database operation failed : Sync LDAP Groups to Keycloak (Custom Provider) <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42012">#42012</a> Client session timestamp not updated in the database if running multiple nodes <code>infinispan</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42046">#42046</a> KeycloakRealmImport placeholder replacement provides access to sensitive environment variables. <code>operator</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42158">#42158</a> Bug in configuration keycoak via keycloak.conf <code>dist/quarkus</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42164">#42164</a> [Keycloak CI - Docs] Broken links <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42178">#42178</a> Integer validation error not shown for user profile fields <code>user-profile</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42182">#42182</a> Validation errors for required actions don't show translated messages <code>admin/ui</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42270">#42270</a> Missing double-dash in the events documentation <code>core</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42339">#42339</a> Allowed Client Scopes add openid scope in scope list <code>oidc</code></li>
<li><a href="https://github.com/keycloak/keycloak/issues/42369">#42369</a> Missing client session offline settings on realm level in the admin UI <code>admin/ui</code></li>
</ul>

</div>