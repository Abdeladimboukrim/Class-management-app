

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login-class-management</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

        <form action="login.php" method="POST">

            <fieldset class="baoquat">
                <legend align="center">
                    <b>Login</b>
                </legend>
                <div class="dangky">
                    <label>Username :</label>
                    </br>
                    <input name="id" type="text" class="form-control" />
                    
                </div>

                <div class="dangky">
                    <label>Password :</label>
                    </br>
                    <input name="pw" type="password" class="form-control" />
                    
                </div>

                <div class="dangky">
                    <input type="checkbox"/>
                    Remember me ?
                    
                </div>

                <div class="button">
                        <button>
                           Login</button>
                        <button>
                           Register</button>
                    </div>

                
        </form>
    
</body>
</html>