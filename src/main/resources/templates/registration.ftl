<#import "/templates/parts/common.ftl" as common>
<#import "/templates/parts/login.ftl" as login>
<@common.page>
Add new user
${message}
<@login.login "/registration" />
</@common.page>