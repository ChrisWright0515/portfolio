import 'Language.dart';

class Project {
  final String name;
  final String description;
  final List<String> additionalInfo;
  final List<String> userTypes;
  final List<Language> technologies;
  final String semester;
  final int teamSize;
  final List<String> images;

  Project({
    required this.name,
    required this.description,
    required this.additionalInfo,
    required this.userTypes,
    required this.technologies,
    required this.semester,
    required this.teamSize,
    required this.images,
  });
}

Language javascript =
    Language(name: 'JavaScript', icon: "assets/icons/javascript.svg");
Language jquery = Language(name: 'jQuery', icon: "assets/icons/jquery.svg");
Language python = Language(name: 'Python', icon: "assets/icons/python.svg");
Language flask = Language(name: 'Flask', icon: "assets/icons/flask.svg");
Language php = Language(name: 'PHP', icon: "assets/icons/php.svg");
Language laravel = Language(name: 'Laravel', icon: "assets/icons/laravel.svg");
Language mysql = Language(name: 'MySQL', icon: "assets/icons/mysql.svg");
Language flutter = Language(name: 'Flutter', icon: "assets/icons/flutter.svg");
Language tailwindcss =
    Language(name: 'Tailwind CSS', icon: "assets/icons/tailwindcss.svg");
Language threejs = Language(name: 'Three.js', icon: "assets/icons/threejs.svg");

List<Project> projects = [
  Project(
    name: 'Restaurant Web Application',
    description:
        'Collaborated in a team of 3 to design and develop a dynamic web application for a virtual restaurant',
    additionalInfo: [
      'Enabled customers to browse the menu and place orders, while allowing admins to manage and update the menu offerings.',
      'Front-end design using HTML, CSS, and jQuery.',
      'Utilized local storage to persist data such as the menu items and customer orders across different pages during the initial learning phase.'
    ],
    userTypes: ['Customer', 'Admin'],
    technologies: [javascript, jquery],
    semester: 'FALL SEMESTER 2022',
    teamSize: 3,
    images: [
      "assets/images/background.jpg",
    ],
  ),
  Project(
    name: 'E-Commerce Web Application',
    description:
        'Independently designed and developed a Game Store e-commerce web application using Python and the Flask framework.',
    additionalInfo: [
      'A multi-user platform with distinct functionalities for customers, vendors, and admins',
      'CRUD operations for customers to manage their profiles, shopping carts, and orders.',
      'CRUD operations for vendors to control their accounts and product listings, providing a comprehensive dashboard for business operations.',
    ],
    userTypes: ['Customer', 'Vendor', 'Admin'],
    technologies: [python, flask, mysql, jquery],
    semester: 'SPRING SEMESTER 2023',
    teamSize: 4,
    images: [
      "assets/images/background.jpg",
    ],
  ),
  Project(
    name: 'Retirement Home Management Web App',
    description:
        'Engaged in a team of 4 to create and implement a comprehensive management system for a retirement home.',
    additionalInfo: [
      'Utilized the PHP Laravel framework and its Eloquent ORM for efficient object-relational mapping, simplifying database interactions and CRUD operations.',
      'Responsive frontend interface using jQuery and Tailwind CSS, focusing on usability for multiple user types.',
      'MySQL database to securely store and manage data related to patients, caregivers, doctors, and family members.',
      'Enabled caregivers to monitor and log patients’ meals and medications, while also allowing patients and family members to schedule appointments with doctors through a user-friendly booking system.',
    ],
    userTypes: ['Patient', 'Family Member', 'Caregiver', 'Doctor', 'Admin'],
    technologies: [php, laravel, mysql, jquery, tailwindcss],
    semester: 'FALL SEMESTER 2024',
    teamSize: 3,
    images: [
      "assets/images/background.jpg",
    ],
  ),
  Project(
    name: 'Inventory Management System Capstone Project',
    description:
        'Led a team of 3 in developing a web and mobile inventory system.',
    additionalInfo: [
      'Integrated Laravel’s Eloquent ORM to interact with the MySQL database, ensuring seamless data handling and consistency across both web and mobile platforms.',
      'A web application accessible to customers, vendors, and employees, streamlining inventory transactions and management.',
      'A mobile application for employees featuring a barcode scanner for efficient product tracking and in-store checkout processes, powered by Flutter.',
      'Introduced an innovative feature for vendors to upload 3D models of their products using Three.js, providing customers with interactive product visualizations on the web application.',
    ],
    userTypes: [
      'Customer',
      'Vendor',
      'General Employee',
      'Receiving Employee',
      'Fulfillment Employee',
      'Management'
    ],
    technologies: [
      php,
      laravel,
      mysql,
      flutter,
      jquery,
      tailwindcss,
      threejs,
    ],
    semester: 'SPRING SEMESTER 2024',
    teamSize: 3,
    images: [
      "assets/images/background.jpg",
      "assets/images/background.jpg",
      "assets/images/background.jpg",
    ],
  ),
];
