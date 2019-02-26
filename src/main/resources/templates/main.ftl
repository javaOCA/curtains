<!DOCTYPE HTML>
<html lang="en">
    <head>
        <title>List of messages</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
    <body>
        <div>
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <input type="submit" value="Sign Out"/>
            </form>
        </div>
        <div>
            <form method="post">
                <input type="text" name="text" placeholder="Введите сообщение" />
                <input type="text" name="tag" placeholder="Тэг">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button type="submit">Добавить</button>
            </form>
        </div>
        <div>
            <form method="post" action="filter">
                <input type="text" name="filter">
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button type="submit">Найти</button>
            </form>
            <h3>List of messages:</h3>
            <div>
                <ul>
                    <#list messages as message>
                        <li>
                            <b>${message.id}</b>
                            <span>${message.text}</span>
                            <i>${message.tag}</i>
                            <strong>${message.getUserName()}</strong>
                        </li>
                    </#list>
                </ul>
            </div>
        </div>
    </body>
</html>