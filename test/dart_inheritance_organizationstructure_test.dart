import 'package:dart_inheritance_organizationstructure/dart_inheritance_organizationstructure.dart';
import 'package:test/test.dart';

void main() {
  group('Employee Tests', () {
    test('Employee class creation', () {
      var employee = Employee('John Doe');
      expect(employee, isA<Employee>());
      expect(employee.name, equals('John Doe'));
    });
  });

  group('Manager Tests', () {
    test('Manager is a subclass of Employee', () {
      var manager = Manager('Jane Doe', []);
      expect(manager, isA<Employee>());
    });

    test('Manager roles list', () {
      var manager = Manager('Jane Doe', [Roles.teamLead, Roles.projectManager]);
      expect(
          manager.roles, containsAll([Roles.teamLead, Roles.projectManager]));
    });

    test('Manager can have multiple roles', () {
      var manager = Manager('Jane Doe', [Roles.teamLead, Roles.departmentHead]);
      expect(manager.roles.length, equals(2));
      expect(manager.roles, contains(Roles.teamLead));
      expect(manager.roles, contains(Roles.departmentHead));
    });
  });
}
