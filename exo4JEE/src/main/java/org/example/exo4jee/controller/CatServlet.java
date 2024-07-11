package org.example.exo4jee.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.exo4jee.model.Chat;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "catServlet", value="/cat")
public class CatServlet extends HttpServlet {
    private List<Chat> chatList;

    @Override
    public void init() throws ServletException {
        chatList = new ArrayList<Chat>();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("chats", chatList);
        req.getRequestDispatcher("/WEB-INF/chat/list.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String race = req.getParameter("race");
        String repas = req.getParameter("repas");
        String dateNaissanceStr = req.getParameter("dateN");
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date dateNaissance = null;
        try {
            dateNaissance = dateFormat.parse(dateNaissanceStr);
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }

        Chat chat = new Chat(nom, race, repas, dateNaissance);
        chatList.add(chat);

        req.setAttribute("chats", chatList);
        req.getRequestDispatcher("/WEB-INF/chat/list.jsp").forward(req, resp);
    }
}
