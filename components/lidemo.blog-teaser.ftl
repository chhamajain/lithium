<#import "common-dates.ftl" as addates />
<#assign messages = rest("/topics/style/blog/recent?page_size=3").messages />
<div class="recent-articles-container">
<#list messages.message as message>
	<#assign post_time=addates.message_date(message) />
	
	<div class="recent-article-wrapper">
		<div class="article-header">
			<div class="author-avatar"> 
				<#if message.author.login != "" && message.author.login != "Anonymous"><@component id="common.widget.user-avatar" user="conv:${message.author.login}" /></#if>
			</div>
			<div class="article-subject"><a href="${message.@view_href}">${message.subject}</a></div>
			<div class="article-posted-by">
				<span class="author">${text.format("lidemo.posted-by")} <#if message.author.login != "" && message.author.login != "Anonymous"><@component id="common.widget.user-name" user="conv:${message.author.login}" /></#if></span>
				<span class="post-date">${text.format("lidemo.posted-on")} ${post_time}</span>
			</div>
		</div>
		<div class="article-teaser">
			<#if message.teaser?length gt 0>
				${message.teaser}
				<span class="read-more"><a href="${message.@view_href}">${text.format("lidemo.read_more")}</a></span>
			</#if>
			
		</div>
		<div class="article-share">
			<div class="comment"><img src="${skin.images.icon_board.url}"> <a href="${message.@view_href}#comment-on-this">${text.format("lidemo.post_a_comment")}</a> </div>
			<div class="share"> <@component id="external.widget.add-this" /></div>
		</div>
	</div>
</#list>
</div>