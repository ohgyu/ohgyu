//package com.servlet.test;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/background")
//public class BackgroundServlet extends HttpServlet {
////    private static final long serialVersionUID = 1L;
////
////    public BackgroundServlet() {
////        super();
////    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        //System.out.println("do Get...");
//    	String color = request.getParameter("color");
//
//        request.getRequestDispatcher("/WEB-INF/views/background.jsp").forward(request, response);
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("do Get...");
//    }
//
//}