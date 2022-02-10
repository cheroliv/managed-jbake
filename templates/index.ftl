<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header"/>
	<#list posts as post>
  		<#if (post.status == "published")>
  			<a href="${post.uri}">
  			<h3><#escape x as x?xml>${post.title}</#escape></h3></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
  			<#if post.summary??><div class="well">${post.summary}</div><#else></#if>
  		</#if>
  	</#list>
	<hr/>
	<p>Les anciens post sont dipsonible içi : <a href="${content.rootpath}${config.archive_file}">archive</a>.</p>
<#include "footer.ftl">