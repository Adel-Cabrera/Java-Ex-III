package com.darkonnen.web.models;

import java.util.ArrayList;

public class Team implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String teamName;
	private ArrayList<Player> players = new ArrayList<Player>();
	private static ArrayList<Team> teams = new ArrayList<Team>();

	public Team(String teamName) {
		this.teamName = teamName;
	}

	public String getTeamName() {
		return teamName;
	}

	public static void addTeam(String teamName) {
		Team newTeam = new Team(teamName);
		Team.teams.add(newTeam);
	}

	public void removeTeam(int index) {
		Team.teams.remove(index);
	}

	public void addPlayer(String first_name, String last_name, Integer age) {
		Player newPlayer = new Player(first_name, last_name, age);
		this.players.add(newPlayer);

	}

	public ArrayList<Player> getPlayers() {
		return players;
	}

	public static ArrayList<Team> getTeams() {
		return Team.teams;
	}

}
