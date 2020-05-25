package com.darkonnen.web.controllers;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GreatNumbers
 */
@WebServlet("/GreatNumbers")
public class GreatNumbers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GreatNumbers() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		if (session.getAttribute("randomNumber") == null) {
			Random rand = new Random();
			int randomNumber = rand.nextInt(100) + 1;
//			set session
			session.setAttribute("randomNumber", randomNumber);
//			set model for view
			request.setAttribute("randomNumber", randomNumber);
		}

		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();

		if (request.getParameter("number") != null) {
			int number = Integer.parseInt(request.getParameter("number"));
			session.setAttribute("number", number);
		} else {
			session.setAttribute("number", null);
			session.setAttribute("randomNumber", null);
		}

		response.sendRedirect("/GNG/GreatNumbers");
	}

}
