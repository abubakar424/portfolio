class Project {
  final String name;
  final String description;
  //final String image;
  final String link;
  Project(this.name, this.description, this.link);
}

List<Project> projectList = [
  Project(
    'My Movies App',
    'A movie browsing app where users can explore, search, and view details about films, including ratings, trailers, and categories, with personalized suggestions.',

    'https://github.com/abubakar424/my-movies.git',
  ),
  Project(
    'Smart Restaurant App',
    'An online food delivery app with AI-powered recommendations that suggest dishes based on user preferences, order history, and trending meals, making ordering smarter and faster.',

    'https://github.com/abubakar424/smart_restaurant_app.git',
  ),
  Project(
      'Reader App UI',
      'A clean and easy-to-use app that lets users open, read, and manage different types of documents (PDF, Word, etc.) with features like bookmarks, highlighting, and search.',
      'https://github.com/abubakar424/reader-app.git'),
] ;