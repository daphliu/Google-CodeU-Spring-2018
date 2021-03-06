<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<!DOCTYPE html>
<html>
<head>
  <title>007 Chat App</title>
  <link rel="stylesheet" href="/css/main.css">
  <script>
    if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('sw.js')
      .then(() => console.log('ServiceWorker registration successful'))
    }
  </script>
</head>
<body>

  <nav>
    <a id="navTitle" href="/">007 Chat App</a>
    <a href="/conversations">Conversations</a>
    <% if(request.getParameter("offline") != null){ %>
    <% } else if(request.getSession().getAttribute("user") != null){ %>
      <a href="/logout">Logout</a>
    <% } else{ %>
      <a href="/login">Login</a>
      <a href="/register">Register</a>
    <% } %>
    <a href="/about.jsp">About</a>

    <% if(request.getSession().getAttribute("is_admin") != null){ %>
      <a href="/adminStats">Admin Stats</a>
      <a href="/testdata">Load Test Data</a>
    <% } %>
  </nav>

  <div id="container">
    <div
      style="width:75%; margin-left:auto; margin-right:auto; margin-top: 50px; padding-right: 20%; padding-top: 0.2%;">

      <h1>Google CodeU Mentorship 2018</h1>
      <h2>This is 007... Team 007</h2>

      <ul>
        <li><a href="/login">Login</a> to get started.</li>
        <li>Go to the <a href="/conversations">conversations</a> page to
            create or join a conversation.</li>
        <li>View the <a href="/about.jsp">about</a> page to learn more about the
            project.</li>
        <li>You can <a href="/testdata">load test data</a> to fill the site with
            example data.</li>
        <li><strong>Usage: </strong> Feel free to create new accounts, conversation and add users
        to conversations. In order to view our stats page, use "admin" as 
         the username with no password. </li>
        <li><strong>Features:</strong> The chat app can run offline. The user can stylize their text in the chat room.
        An administrator can also view site statistics and change other users' admin status. The user can control who views their
    conversations.  </li>
      </ul>


  </div>
    </div>
  </div>
</body>
</html>
