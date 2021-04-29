<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Sporty Shoes</title>
    </head>
    <body>
    <div style="text-align: center">
        <h1>Welcome to Sporty Shoes</h1>
        <h2>Admin Login</h2>
        <form action="admin" method="post">
            <label for="username">Username:</label>
            <input type="text" name="username"/>
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password"/>
            <br><br>
            <button type="submit">Login</button>
        </form>
        <hr>
        <h2>User Login</h2>
        <form action="user" method="post">
            <label for="username">Username:</label>
            <input type="text" name="username"/>
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password"/>
            <br><br>
            <button type="submit">Login</button>
        </form>
    </div>
    </body>
</html>