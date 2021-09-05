class Package {
  String? name;
  String? pub;
  String? description;
  String? repo;
  String get url => 'https://pub.dev/packages/$pub';
  String get githubUrl => 'https://github.com/$repo';
  String get githubBadgeStars =>
      'https://img.shields.io/github/stars/${repo}?style=social';

  String get md {
    String linkedName = '[$name]($url)';
    return '- $linkedName - ${description!.replaceAll('\n', ' ')}';
  }

  Package({
    this.name,
    this.pub,
    this.description,
    this.repo,
  });

  factory Package.fromJson(Map<String, dynamic> json) {
    return Package(
      name: json['name'],
      pub: json['pub'],
      description: json['description'],
      repo: json['repo'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'pub': pub,
      'description': description,
      'repo': repo,
    };
  }
}
