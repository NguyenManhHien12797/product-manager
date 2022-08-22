package com.example.productmanagerment.model;

public class Product {
        private int id;
        private String name;
        private double cost;
        private String decription;
        private String producer;

        public Product(int id, String name, double cost, String decription, String producer) {
                this.id = id;
                this.name = name;
                this.cost = cost;
                this.decription = decription;
                this.producer = producer;
        }

        public int getId() {
                return id;
        }

        public void setId(int id) {
                this.id = id;
        }

        public String getName() {
                return name;
        }

        public void setName(String name) {
                this.name = name;
        }

        public double getCost() {
                return cost;
        }

        public void setCost(double cost) {
                this.cost = cost;
        }

        public String getDecription() {
                return decription;
        }

        public void setDecription(String decription) {
                this.decription = decription;
        }

        public String getProducer() {
                return producer;
        }

        public void setProducer(String producer) {
                this.producer = producer;
        }
}


