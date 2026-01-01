describe('Fungsi Logout', () => {
  const username = 'adelia'; // ganti sesuai user valid
  const password = 'adelia12';

  before(() => {
    // Login sebagai user
    cy.visit('http://localhost:8000/login');
    cy.get('input[name="username"]').type(username); // gunakan email jika login pakai email
    cy.get('input[name="password"]').type(password);
    cy.get('button[type="submit"]').click();
    cy.url().should('not.include', '/login');
  });
  it('User dapat logout dengan benar', () => {
    // Klik tombol logout (ubah selector sesuai tampilan di halaman kamu)
    cy.contains('Logout').click();

    // Verifikasi diarahkan kembali ke halaman login atau home
    cy.url().should('satisfy', url => url.includes('/login') || url === 'http://localhost:8000/');
    cy.contains('Login').should('exist');
  });
});
