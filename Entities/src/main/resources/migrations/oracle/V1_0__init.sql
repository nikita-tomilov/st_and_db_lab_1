CREATE TABLE person
(
    id                  NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    name                VARCHAR2(255) NOT NULL,
    birth_date          TIMESTAMP     NOT NULL,
    birth_place         VARCHAR2(255) NOT NULL,
    faculty             VARCHAR2(255) NOT NULL,
    position            VARCHAR2(255) NOT NULL,
    is_contract_student NUMBER        NOT NULL,
    contract_from       TIMESTAMP     NOT NULL,
    contract_to         TIMESTAMP     NOT NULL,
    group_id            NUMBER
);

CREATE TABLE study_group
(
    id            NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    name          VARCHAR2(255)  NOT NULL,
    study_form    VARCHAR2(255)  NOT NULL,
    school        VARCHAR2(1024) NOT NULL,
    speciality    VARCHAR2(1024) NOT NULL,
    qualification VARCHAR2(255)  NOT NULL,
    study_year    VARCHAR2(255)  NOT NULL
);

CREATE TABLE study_group_participant
(
    study_group_id INT NOT NULL,
    person_id      INT NOT NULL,
    PRIMARY KEY (study_group_id, person_id)
);


CREATE TABLE lesson_entry
(
    id         NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    name       VARCHAR2(255) NOT NULL,
    teacher_id NUMBER        NOT NULL,
    weekday    NUMBER        NOT NULL,
    hour       NUMBER        NOT NULL,
    minute     NUMBER        NOT NULL,
    room       VARCHAR2(255) NOT NULL,
    group_id   NUMBER        NOT NULL
);

CREATE TABLE assessment
(
    id          NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY,
    name        VARCHAR2(255) NOT NULL,
    mark        NUMBER        NOT NULL,
    mark_letter VARCHAR2(255) NOT NULL,
    achieved_at TIMESTAMP     NOT NULL,
    achieved_by NUMBER        NOT NULL
);


/*
 drop table person;
 drop table study_group;
 drop table study_group_participant;
 drop table lesson_entry;
 drop table assessment;
 */