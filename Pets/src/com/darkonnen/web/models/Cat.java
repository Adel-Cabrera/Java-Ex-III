package com.darkonnen.web.models;

public class Cat extends Animal {

	public Cat(String name, String breed, double weight) {
		super(name, breed, weight);
	}

	public String showAffection() {
		return String.format("Your %s cat, %s, looked at you with some affection. You think.", this.getBreed(),
				this.getName());
	}

}
