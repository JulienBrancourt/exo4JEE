<jsp:useBean id="chats" scope="request" type="java.util.ArrayList<org.example.exo4jee.model.Chat>"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List des Personnes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
</head>
<body>
<main class="container">
    <h1>Chat</h1>

    <h2>Créer un chat</h2>
    <form action="cat" method="post">
        <div class="form-group">
            <label for="nom">Nom :</label>
            <input type="text" class="form-control" id="nom" name="nom">
        </div>
        <div class="form-group">
            <label for="race">Race :</label>
            <input type="text" class="form-control" id="race" name="race">
        </div>
        <div class="form-group">
            <label for="repas">Repas favori :</label>
            <input type="text" class="form-control" id="repas" name="repas">
        </div>
        <div class="form-group">
            <label for="dateN">Date de naissance :</label>
            <input type="date" class="form-control" id="dateN" name="dateN">
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
    <hr>

    <% if (chats.size() < 1) { %>
    <p>Il n'y a pas de chat à afficher :(</p>
    <% } else { %>

    <h2>Liste des chats</h2>
    <table class="table text-center align-middle even-row-color table-bordered">
        <thead>
        <tr>
            <th>#</th>
            <th>Nom</th>
            <th>Race</th>
            <th>Repas</th>
            <th>Date de naissance</th>
        </tr>
        </thead>
        <tbody>
        <% for (int i = 0; i < chats.size(); i++) { %>
        <tr>
            <td><%= i + 1 %>
            </td>
            <td><%= chats.get(i).getNom() %>
            </td>
            <td><%= chats.get(i).getRace() %>
            </td>
            <td><%= chats.get(i).getRepas() %>
            </td>
            <td><%= chats.get(i).getDateNaissance() %>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <% } %>
</main>

</body>
</html>
