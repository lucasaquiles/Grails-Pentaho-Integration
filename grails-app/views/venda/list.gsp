
<%@ page import="pentaho.exemplo.Venda" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'venda.label', default: 'Venda')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link action="report">Gerar Relatório</g:link></span>

		</div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'venda.id.label', default: 'Id')}" />
                        
                            <th><g:message code="venda.cliente.label" default="Cliente" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${vendaInstanceList}" status="i" var="vendaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${vendaInstance.id}">${fieldValue(bean: vendaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: vendaInstance, field: "cliente")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${vendaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
