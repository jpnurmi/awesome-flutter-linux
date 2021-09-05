class Project {
  String? name;
  String? description;
  String? repo;
  String? url;
  String get githubUrl => 'https://github.com/$repo';
  String get githubBadgeStars =>
      'https://img.shields.io/github/stars/${repo}?style=social';

  String get md {
    String linkedName = '[${name}](${url ?? githubUrl})';
    String linkedBadgeStars =
        '[![GitHub Repo stars]($githubBadgeStars)]($githubUrl)';
    return '| $linkedName | $linkedBadgeStars | ${description} |';
  }

  Project({
    this.name,
    this.description,
    this.repo,
    this.url,
  });

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      name: json['name'],
      description: json['description'],
      repo: json['repo'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'repo': repo,
      'url': url,
    };
  }
}
