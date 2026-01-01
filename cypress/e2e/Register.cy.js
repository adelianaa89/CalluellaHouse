describe('Pengujian Fitur Registrasi User', () => {

  // Data user valid
  const validUser = {
    name: 'Adelia Putri',
    address: 'Purwokerto',
    no_hp: '081234567890',
    username: 'adelia123',
    email: `adelia${Date.now()}@example.com`, // Unik agar tidak bentrok
    password: 'password123'
  };

  // 1. Berhasil registrasi
  it('Berhasil registrasi jika data valid', () => {
    cy.visit('http://localhost:8000/register');

    cy.get('input[name="name"]').type(validUser.name);
    cy.get('input[name="address"]').type(validUser.address);
    cy.get('input[name="no_hp"]').type(validUser.no_hp);
    cy.get('input[name="username"]').type(validUser.username);
    cy.get('input[name="email"]').type(validUser.email);
    cy.get('input[name="password"]').type(validUser.password);
    cy.get('input[name="password_confirmation"]').type(validUser.password);

    cy.get('form').submit();

    cy.url().should('not.include', '/register'); // Sukses redirect
  });

  // 2. Gagal registrasi - email sudah dipakai
  it('Gagal registrasi jika email sudah digunakan', () => {
    cy.visit('http://localhost:8000/register');

    cy.get('input[name="name"]').type('User Baru');
    cy.get('input[name="address"]').type('Alamat');
    cy.get('input[name="no_hp"]').type('089999999999');
    cy.get('input[name="username"]').type('userlama');
    cy.get('input[name="email"]').type(validUser.email); // email yang sama
    cy.get('input[name="password"]').type('password123');
    cy.get('input[name="password_confirmation"]').type('password123');

    cy.get('form').submit();

    cy.get('.alert-danger').should('contain', 'The email has already been taken');
  });

  // 3. Gagal registrasi - semua field kosong
  it('Gagal registrasi jika semua field kosong', () => {
    cy.visit('http://localhost:8000/register');

    cy.get('form').submit();

    cy.get('.alert-danger').should('contain', 'The name field is required');
    cy.get('.alert-danger').should('contain', 'The email field is required');
    cy.get('.alert-danger').should('contain', 'The password field is required');
  });

});
