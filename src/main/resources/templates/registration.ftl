<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    ${message?ifExists}
    <br>
    Add new user
    <@l.login "/registration" />
</@c.page>