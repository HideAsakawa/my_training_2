// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Question extends DataClass implements Insertable<Question> {
  final int id;
  final String question;
  final String answer;
  final String choice1;
  final String choice2;
  final String choice3;
  final String explanation;
  Question(
      {@required this.id,
      @required this.question,
      @required this.answer,
      @required this.choice1,
      @required this.choice2,
      @required this.choice3,
      @required this.explanation});
  factory Question.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return Question(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      question: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}question']),
      answer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer']),
      choice1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}choice1']),
      choice2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}choice2']),
      choice3: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}choice3']),
      explanation: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}explanation']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || question != null) {
      map['question'] = Variable<String>(question);
    }
    if (!nullToAbsent || answer != null) {
      map['answer'] = Variable<String>(answer);
    }
    if (!nullToAbsent || choice1 != null) {
      map['choice1'] = Variable<String>(choice1);
    }
    if (!nullToAbsent || choice2 != null) {
      map['choice2'] = Variable<String>(choice2);
    }
    if (!nullToAbsent || choice3 != null) {
      map['choice3'] = Variable<String>(choice3);
    }
    if (!nullToAbsent || explanation != null) {
      map['explanation'] = Variable<String>(explanation);
    }
    return map;
  }

  QuestionsCompanion toCompanion(bool nullToAbsent) {
    return QuestionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      question: question == null && nullToAbsent
          ? const Value.absent()
          : Value(question),
      answer:
          answer == null && nullToAbsent ? const Value.absent() : Value(answer),
      choice1: choice1 == null && nullToAbsent
          ? const Value.absent()
          : Value(choice1),
      choice2: choice2 == null && nullToAbsent
          ? const Value.absent()
          : Value(choice2),
      choice3: choice3 == null && nullToAbsent
          ? const Value.absent()
          : Value(choice3),
      explanation: explanation == null && nullToAbsent
          ? const Value.absent()
          : Value(explanation),
    );
  }

  factory Question.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Question(
      id: serializer.fromJson<int>(json['id']),
      question: serializer.fromJson<String>(json['question']),
      answer: serializer.fromJson<String>(json['answer']),
      choice1: serializer.fromJson<String>(json['choice1']),
      choice2: serializer.fromJson<String>(json['choice2']),
      choice3: serializer.fromJson<String>(json['choice3']),
      explanation: serializer.fromJson<String>(json['explanation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'question': serializer.toJson<String>(question),
      'answer': serializer.toJson<String>(answer),
      'choice1': serializer.toJson<String>(choice1),
      'choice2': serializer.toJson<String>(choice2),
      'choice3': serializer.toJson<String>(choice3),
      'explanation': serializer.toJson<String>(explanation),
    };
  }

  Question copyWith(
          {int id,
          String question,
          String answer,
          String choice1,
          String choice2,
          String choice3,
          String explanation}) =>
      Question(
        id: id ?? this.id,
        question: question ?? this.question,
        answer: answer ?? this.answer,
        choice1: choice1 ?? this.choice1,
        choice2: choice2 ?? this.choice2,
        choice3: choice3 ?? this.choice3,
        explanation: explanation ?? this.explanation,
      );
  @override
  String toString() {
    return (StringBuffer('Question(')
          ..write('id: $id, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('choice1: $choice1, ')
          ..write('choice2: $choice2, ')
          ..write('choice3: $choice3, ')
          ..write('explanation: $explanation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          question.hashCode,
          $mrjc(
              answer.hashCode,
              $mrjc(
                  choice1.hashCode,
                  $mrjc(choice2.hashCode,
                      $mrjc(choice3.hashCode, explanation.hashCode)))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Question &&
          other.id == this.id &&
          other.question == this.question &&
          other.answer == this.answer &&
          other.choice1 == this.choice1 &&
          other.choice2 == this.choice2 &&
          other.choice3 == this.choice3 &&
          other.explanation == this.explanation);
}

class QuestionsCompanion extends UpdateCompanion<Question> {
  final Value<int> id;
  final Value<String> question;
  final Value<String> answer;
  final Value<String> choice1;
  final Value<String> choice2;
  final Value<String> choice3;
  final Value<String> explanation;
  const QuestionsCompanion({
    this.id = const Value.absent(),
    this.question = const Value.absent(),
    this.answer = const Value.absent(),
    this.choice1 = const Value.absent(),
    this.choice2 = const Value.absent(),
    this.choice3 = const Value.absent(),
    this.explanation = const Value.absent(),
  });
  QuestionsCompanion.insert({
    @required int id,
    @required String question,
    @required String answer,
    @required String choice1,
    @required String choice2,
    @required String choice3,
    @required String explanation,
  })  : id = Value(id),
        question = Value(question),
        answer = Value(answer),
        choice1 = Value(choice1),
        choice2 = Value(choice2),
        choice3 = Value(choice3),
        explanation = Value(explanation);
  static Insertable<Question> custom({
    Expression<int> id,
    Expression<String> question,
    Expression<String> answer,
    Expression<String> choice1,
    Expression<String> choice2,
    Expression<String> choice3,
    Expression<String> explanation,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (question != null) 'question': question,
      if (answer != null) 'answer': answer,
      if (choice1 != null) 'choice1': choice1,
      if (choice2 != null) 'choice2': choice2,
      if (choice3 != null) 'choice3': choice3,
      if (explanation != null) 'explanation': explanation,
    });
  }

  QuestionsCompanion copyWith(
      {Value<int> id,
      Value<String> question,
      Value<String> answer,
      Value<String> choice1,
      Value<String> choice2,
      Value<String> choice3,
      Value<String> explanation}) {
    return QuestionsCompanion(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      choice1: choice1 ?? this.choice1,
      choice2: choice2 ?? this.choice2,
      choice3: choice3 ?? this.choice3,
      explanation: explanation ?? this.explanation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String>(answer.value);
    }
    if (choice1.present) {
      map['choice1'] = Variable<String>(choice1.value);
    }
    if (choice2.present) {
      map['choice2'] = Variable<String>(choice2.value);
    }
    if (choice3.present) {
      map['choice3'] = Variable<String>(choice3.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionsCompanion(')
          ..write('id: $id, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('choice1: $choice1, ')
          ..write('choice2: $choice2, ')
          ..write('choice3: $choice3, ')
          ..write('explanation: $explanation')
          ..write(')'))
        .toString();
  }
}

class $QuestionsTable extends Questions
    with TableInfo<$QuestionsTable, Question> {
  final GeneratedDatabase _db;
  final String _alias;
  $QuestionsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _questionMeta = const VerificationMeta('question');
  GeneratedTextColumn _question;
  @override
  GeneratedTextColumn get question => _question ??= _constructQuestion();
  GeneratedTextColumn _constructQuestion() {
    return GeneratedTextColumn(
      'question',
      $tableName,
      false,
    );
  }

  final VerificationMeta _answerMeta = const VerificationMeta('answer');
  GeneratedTextColumn _answer;
  @override
  GeneratedTextColumn get answer => _answer ??= _constructAnswer();
  GeneratedTextColumn _constructAnswer() {
    return GeneratedTextColumn(
      'answer',
      $tableName,
      false,
    );
  }

  final VerificationMeta _choice1Meta = const VerificationMeta('choice1');
  GeneratedTextColumn _choice1;
  @override
  GeneratedTextColumn get choice1 => _choice1 ??= _constructChoice1();
  GeneratedTextColumn _constructChoice1() {
    return GeneratedTextColumn(
      'choice1',
      $tableName,
      false,
    );
  }

  final VerificationMeta _choice2Meta = const VerificationMeta('choice2');
  GeneratedTextColumn _choice2;
  @override
  GeneratedTextColumn get choice2 => _choice2 ??= _constructChoice2();
  GeneratedTextColumn _constructChoice2() {
    return GeneratedTextColumn(
      'choice2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _choice3Meta = const VerificationMeta('choice3');
  GeneratedTextColumn _choice3;
  @override
  GeneratedTextColumn get choice3 => _choice3 ??= _constructChoice3();
  GeneratedTextColumn _constructChoice3() {
    return GeneratedTextColumn(
      'choice3',
      $tableName,
      false,
    );
  }

  final VerificationMeta _explanationMeta =
      const VerificationMeta('explanation');
  GeneratedTextColumn _explanation;
  @override
  GeneratedTextColumn get explanation =>
      _explanation ??= _constructExplanation();
  GeneratedTextColumn _constructExplanation() {
    return GeneratedTextColumn(
      'explanation',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, question, answer, choice1, choice2, choice3, explanation];
  @override
  $QuestionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'questions';
  @override
  final String actualTableName = 'questions';
  @override
  VerificationContext validateIntegrity(Insertable<Question> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('question')) {
      context.handle(_questionMeta,
          question.isAcceptableOrUnknown(data['question'], _questionMeta));
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    if (data.containsKey('answer')) {
      context.handle(_answerMeta,
          answer.isAcceptableOrUnknown(data['answer'], _answerMeta));
    } else if (isInserting) {
      context.missing(_answerMeta);
    }
    if (data.containsKey('choice1')) {
      context.handle(_choice1Meta,
          choice1.isAcceptableOrUnknown(data['choice1'], _choice1Meta));
    } else if (isInserting) {
      context.missing(_choice1Meta);
    }
    if (data.containsKey('choice2')) {
      context.handle(_choice2Meta,
          choice2.isAcceptableOrUnknown(data['choice2'], _choice2Meta));
    } else if (isInserting) {
      context.missing(_choice2Meta);
    }
    if (data.containsKey('choice3')) {
      context.handle(_choice3Meta,
          choice3.isAcceptableOrUnknown(data['choice3'], _choice3Meta));
    } else if (isInserting) {
      context.missing(_choice3Meta);
    }
    if (data.containsKey('explanation')) {
      context.handle(
          _explanationMeta,
          explanation.isAcceptableOrUnknown(
              data['explanation'], _explanationMeta));
    } else if (isInserting) {
      context.missing(_explanationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Question map(Map<String, dynamic> data, {String tablePrefix}) {
    return Question.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $QuestionsTable createAlias(String alias) {
    return $QuestionsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $QuestionsTable _questions;
  $QuestionsTable get questions => _questions ??= $QuestionsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [questions];
}
