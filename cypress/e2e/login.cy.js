describe('Login Page Test', () => {
  beforeEach(() => {
    cy.visit('http://localhost:8000/login'); // Ganti URL sesuai dengan URL lokal Laravel kamu
  });

  it('menampilkan form login dengan field username dan password', () => {
    cy.get('input[name="username"]').should('exist');
    cy.get('input[name="password"]').should('exist');
    cy.contains('Sign In').should('exist');
  });

  it('gagal login dengan data yang salah', () => {
    cy.get('input[name="username"]').type('salahuser');
    cy.get('input[name="password"]').type('salahpass');
    cy.get('button[type="submit"]').click();

    cy.contains('Invalid username or password').should('exist');
  });
});
