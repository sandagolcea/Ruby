shopping_cart = ['chair','table','sofa']

template = "
<ul>
	<% shopping_cart.each. do |item| %>
		<li><%= item %></li>
	<% end %>
</ul>
"

# require 'erb'
# puts ERB.new(template).result
