<#import "/templates/parts/common.ftl" as common>
<#import "/templates/parts/login.ftl" as login>

<@common.page>
    <div>
        <@login.logout />
    </div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Input message">
            <input type="text" name="tag" placeholder="Tag">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit">Add message</button>
        </form>
    </div>
    <div> Message list </div>
    <form method="post" action="filter">
        <input type="text" name="filter" placeholder="find by tag">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Find</button>
    </form>
    <div>Message list</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No message
    </#list>
</@common.page>