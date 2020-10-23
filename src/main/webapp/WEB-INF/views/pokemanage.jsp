
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Pokemon Manager</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Raleway" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC|Raleway" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /*General Styles*/

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            font-size: 16px;
            font-family: "Raleway", sans-serif;
            color: #555;
        }

        ul,
        nav {
            list-style: none;
        }

        a {
            text-decoration: none;
            opacity: 0.75;
            color: black;
        }

        a:hover {
            opacity: 1;
        }

        a.btn {
            border-radius: 4px;
            /*text-transform: uppercase;*/
            font-weight: bold;
            text-align: center;
            background-color: #e07e7b;
            opacity: 1;
            transition: all 400ms;
            color: white;
        }

        btn1{
            border-radius: 4px;
            /*text-transform: uppercase;*/
            font-weight: bold;
            text-align: center;
            background-color: #ce5856;
            opacity: 1;
            transition: all 400ms;

        }

        a.btn:hover {
            background-color: #ce5856;
        }

        section {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 100px 80px;
        }

        section:not(.hero):nth-child(even) {
            background-color: #f5f5f5;
        }

        .grid {
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        hr {
            width: 250px;
            height: 3px;
            background-color: #e07e7b;
            border: 0;
            margin-bottom: 50px;
        }

        .image-1 {
            background-image: url("https://images.unsplash.com/photo-1505852903341-fc8d3db10436?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1600&h=900&fit=crop&s=e2f72e62d5f4f04256dd9305d5f51f3c");
        }

        section h3.title {
            text-transform: capitalize;
            font: bold 48px "Amatic SC", sans-serif;
            margin-bottom: 30px;
            text-align: center;
        }

        section p {
            max-width: 775px;
            line-height: 2;
            padding: 0 20px;
            margin-bottom: 30px;
            text-align: center;
        }

        @media (max-width: 800px) {
            section {
                padding: 50px 20px;
            }
        }

        /*Header Styles*/

        header {
            position: absolute;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 35px 100px 0;
            animation: 1s fadein 0.5s forwards;
            opacity: 0;
            color: #fff;
            z-index: 2;
        }

        @keyframes fadein {
            100% {
                opacity: 1;
            }
        }

        header h2 {
            font-family: "Amatic SC", sans-serif;
        }

        header nav {
            display: flex;
            margin-right: -15px;
        }

        header nav li {
            margin: 0 15px;
        }

        @media (max-width: 800px) {
            header {
                padding: 20px 50px;
                flex-direction: column;
            }

            header h2 {
                margin-bottom: 15px;
            }
        }

        /*Hero Styles*/

        .hero {
            position: relative;
            justify-content: center;
            text-align: center;
            min-height: 100vh;
            color: #fff;
        }

        .hero .background-image {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url("https://i.pinimg.com/originals/4a/94/26/4a94268541d7a0ed95a8be5138e8a288.jpg");
            background-size: cover;
            z-index: -1;
            background-color: #80a3db;
        }

        .hero h1 {
            font: 72px "Amatic SC", sans-serif;
            text-shadow: 2px 2px rgba(0, 0, 0, 0.3);
            margin-bottom: 15px;
        }

        .hero h3 {
            font: 28px "Raleway", sans-serif;
            font-weight: 300;
            text-shadow: 2px 2px rgba(0, 0, 0, 0.3);
            margin-bottom: 40px;
        }

        .hero a.btn {
            padding: 20px 46px;
        }

        .hero-content-area {
            opacity: 0;
            margin-top: 100px;
            animation: 1s slidefade 1s forwards;
        }

        @keyframes slidefade {
            100% {
                opacity: 1;
                margin: 0;
            }
        }

        @media (max-width: 800px) {
            .hero {
                min-height: 600px;
            }

            .hero h1 {
                font-size: 48px;
            }

            .hero h3 {
                font-size: 24px;
            }

            .hero a.btn {
                padding: 15px 40px;
            }
            .pad-10{padding: 10px!important;}
        }
    </style>
</head>
<body>

<section class="hero">
    <div class="background-image"></div>
    <div class="hero-content-area">
        <h2>${message}</h2>

        <div align="center">
            <h2>Pokemon Manager</h2>
            <form method="get" action="search">
                <input type="text" class="form-control" name="keyword" /> &nbsp;
                <input class ="btn form-control" type="submit" value="Search" />


            </form>
            <table border="1" cellpadding="5" style="border-color: white; margin-top: 50px;">
                <tr>
                    <th class="pad-10">ID</th>
                    <th class="pad-10">Pokemon Name</th>
                    <th class="pad-10">Pokemon Type</th>
                    <th class="pad-10">Poemon Speed</th>
                    <th class="pad-10">Action</th>
                </tr>
                <c:forEach items="${listPokemon}" var="pokemon">
                    <tr>
                        <td class="pad-10">${pokemon.id}</td>
                        <td class="pad-10">${pokemon.pokename}</td>
                        <td class="pad-10">${pokemon.poketype}</td>
                        <td class="pad-10">${pokemon.pokespeed}</td>
                        <td class="pad-10">
                            <a href="${pageContext.request.contextPath}/edit?id=${pokemon.id}">Edit</a>
                            &nbsp;&nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/delete?id=${pokemon.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    
    <div class="col-sm-12 col-sm-12 col-sm-12 col-sm-12">
        <div style="margin-top: 40px" class="col-sm-6 col-sm-6 col-sm-6 col-sm-6">
            <a href="${pageContext.request.contextPath}/new" class="btn pull-right">New Pokemon</a>
        </div>
        <div style="margin-top: 40px" class="col-sm-6 col-sm-6 col-sm-6 col-sm-6">
            <a href="${pageContext.request.contextPath}" class="btn pull-left">Go to Landing Page</a>
        </div>

    </div>
</section>



</body>
</html>