<p class="item__meta">
	<% if $Categories.exists %>
		Categories /
		<% loop $Categories %>
			<a href="$Link" title="$Title">$Title</a><% if not Last %>, <% end_if %>
		<% end_loop %>
	<% end_if %>
</p>

<p class="item__meta">
	<% if $Tags.exists %>
		Tags /
		<% loop $Tags %>
			<a href="$Link" title="$Title">$Title</a><% if not Last %>, <% end_if %>
		<% end_loop %>
	<% end_if %>
</p>

<p class="item__meta">
	<% if $Comments.exists %>
		<a href="{$Link}#comments-holder">
			<%t Blog.Comments "Comments" %>
			$Comments.count
		</a>;
	<% end_if %>
</p>

<p class="item__meta">
	Posted /
	<a href="$MonthlyArchiveLink">$PublishDate.ago</a>
</p>
