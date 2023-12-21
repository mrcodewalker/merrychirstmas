<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
	body {
    background-image: url('https://scontent-hkg4-1.xx.fbcdn.net/v/t1.15752-9/406212372_295055346335551_3178930807282216112_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8cd0a2&_nc_ohc=doJsk8JfKOsAX-KW2Om&_nc_ht=scontent-hkg4-1.xx&oh=03_AdSGNviDy-SJeydM_Ly-GaYKOKN2VYUBn1A1K-XRBUPPyA&oe=65ABCA7E');
    background-size: contain;
    background-position: center;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0;
    padding: 0;
}
.background-overlay {
            position: absolute;
            top: 20%;
            left:0;
            width: 10%;
            height: 10%;
            background-color: #000;
            opacity: 0.5; /* Độ mờ của overlay */
            animation: pulse 1.5s ease-out infinite alternate;
        }
        @keyframes pulse {
            from {
                opacity: 0.5;
            }
            to {
                opacity: 0.8;
            }
        }
.form-container {
    background-color: rgba(255, 255, 255, 0.8);
    padding: 20px;
    border-radius: 10px;
    max-width: 80%;
    text-align: center;
}

.form-group {
    margin-bottom: 15px;
}

input[type="text"] {
    width: 100%;
}
.snowflakes {
            position: fixed;
            top: -50px;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: 9999;
        }

        .snowflake {
            position: absolute;
            width: 5px;
            height: 5px;
            background-color: #fff;
            border-radius: 50%;
            opacity: 0.7;
            animation: snowfall 5s linear infinite;
        }

        /* Tạo nhiều hạt tuyết rơi */
        .snowflake:nth-child(1) {
            left: 5%;
            animation-delay: 0s;
        }

        .snowflake:nth-child(2) {
            left: 15%;
            animation-delay: 1s;
        }

        .snowflake:nth-child(3) {
            left: 25%;
            animation-delay: 2s;
        }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container form-container">
    <form action="solve" method="post">
        <div class="form-group">
            <label for="index">Ngày chúng ta nói iu nhau:</label>
            <input type="text" class="form-control" id="index" name="index" placeholder="Nhập vô đây nè định dạng 01/11/1111">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
     <div class="snowflakes">
        <div class="snowflake"></div>
        <div class="snowflake"></div>
        <div class="snowflake"></div>
        <!-- Thêm nhiều snowflake divs nếu muốn -->
    </div>
</div>
</body>
</html>