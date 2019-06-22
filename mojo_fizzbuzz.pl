#!/usr/bin/env perl
use Mojolicious::Lite;

get '/' => sub {
  my $c = shift;
  $c->render(template => 'index');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
<h1>Welcome to the Mojolicious real-time web framework!</h1>
<!-- 以下4行を追加 -->
<% for my $num (1 .. 100){ %>
  <% if ($num % 3 == 0 ){ %>
    fizz
  <% } else { %>
    <%= $num %>
  <% } %>
<% } %>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
