package br.com.alura.jpa.testes;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.alura.jpa.modelo.Conta;

public class AlterarSaldoContaCarlos {
	public static void main (String [] args) {
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("alura");
		EntityManager em = emf.createEntityManager();
		
		Conta contaDoCarlos = em.find(Conta.class, 3L);
		
		em.getTransaction().begin();
		contaDoCarlos.setSaldo(20.0);
		em.getTransaction().commit();
		
	}
}
