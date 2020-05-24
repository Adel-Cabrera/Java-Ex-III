package com.darkonnen.web.models;

public class Dog extends Animal {

	public Dog(String name, String breed, double weight) {
		super(name, breed, weight);
	}

	@Override
	public String showAffection() {
		if (this.getWeight() < 20) {
			return String.format("%s hopped in your lap and cuddled you!", this.getName());
		} else {
			return String.format("%s curled up next to you.", this.getName());
		}
	}

}
