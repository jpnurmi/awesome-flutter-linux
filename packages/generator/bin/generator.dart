import 'dart:io';

import 'package:args/args.dart';
import 'package:generator/generator.dart';

const _kAutoGenMark = '<!--AUTO-GENERATE-->';

Future<void> main(List<String> args) async {
  final parser = ArgParser();
  parser.addOption(
    'config',
    abbr: 'c',
    valueHelp: 'path',
    defaultsTo: 'config.yaml',
    help: 'Path to config.yaml.',
  );
  parser.addOption(
    'input',
    abbr: 'i',
    valueHelp: 'path',
    defaultsTo: Directory.current.path,
    help: 'Path to awesome.yaml.',
  );
  parser.addOption(
    'output',
    abbr: 'o',
    valueHelp: 'path',
    defaultsTo: 'README.md',
    help: 'The output path',
  );
  final options = parser.parse(args);

  await initConfig(options['config']);
  await initLocalDb(options['input']);

  File file = File(options['output']);
  String content = file.readAsStringSync();

  List<Project> projectList = sharedLocalDb.projects!.list()!;
  List<Package> packageList = sharedLocalDb.packages!.list()!;

  projectList
      .sort((a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase()));
  packageList
      .sort((a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase()));

  String md = '''
## Packages

${packageList.map((e) => e.md).join('\n')}

## Projects

${projectList.map((e) => e.md).join('\n')}

''';

  int markIndexS = content.indexOf(_kAutoGenMark) + _kAutoGenMark.length;
  int markIndexE = content.lastIndexOf(_kAutoGenMark);

  String newContent = '';
  newContent += content.substring(0, markIndexS);
  newContent += '\n$md\n';
  newContent += content.substring(markIndexE);

  file.writeAsStringSync(newContent);
}
