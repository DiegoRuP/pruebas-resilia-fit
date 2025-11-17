// test/login_test.dart
import 'package:flutter_test/flutter_test.dart';

// Simula un servicio de autenticación
class AuthService {
  Future<bool> login(String email, String password) async {
    await Future.delayed(Duration(milliseconds: 500));
    
    if (email.isEmpty || password.isEmpty) {
      throw Exception('Email y contraseña son requeridos');
    }
    
    if (!email.contains('@')) {
      throw Exception('Email inválido');
    }
    
    if (password.length < 6) {
      throw Exception('La contraseña debe tener al menos 6 caracteres');
    }
    
    return email == 'test@example.com' && password == 'password123';
  }
  
  bool validateEmail(String email) {
    return email.contains('@') && email.contains('.');
  }
  
  bool validatePassword(String password) {
    return password.length >= 6;
  }
}

void main() {
  group('AuthService Tests', () {
    late AuthService authService;
    
    setUp(() {
      authService = AuthService();
    });
    
    test('Login exitoso con credenciales correctas', () async {
      final result = await authService.login('test@example.com', 'password123');
      expect(result, true);
    });
    
    test('Login falla con credenciales incorrectas', () async {
      final result = await authService.login('test@example.com', 'wrongpassword');
      expect(result, false);
    });
    
    test('Login lanza excepción con email vacío', () async {
      expect(
        () => authService.login('', 'password123'),
        throwsException,
      );
    });
    
    test('Email válido retorna true', () {
      expect(authService.validateEmail('test@example.com'), true);
    });
    
    test('Password con 6+ caracteres retorna true', () {
      expect(authService.validatePassword('password123'), true);
    });
  });
}