drop table if exists answer;

drop table if exists answer_content;

drop table if exists category;

drop table if exists data;

drop table if exists data_content;

drop table if exists document;

drop table if exists erp_data_category;

drop table if exists erp_data_reply;

drop table if exists erp_document_category;

drop table if exists erp_question_answer;

drop table if exists erp_question_category;

drop table if exists erp_user_answer;

drop table if exists erp_user_data;

drop table if exists erp_user_document;

drop table if exists erp_user_info_user_info_detail;

drop table if exists erp_user_info_user_status;

drop table if exists erp_user_question;

drop table if exists erp_user_reply;

drop table if exists question;

drop table if exists question_content;

drop table if exists reply;

drop table if exists reply_content;

drop table if exists user_detail_info;

drop table if exists user_document_download_log;

drop table if exists user_info;

drop table if exists user_status;

/*==============================================================*/
/* Table: answer                                                */
/*==============================================================*/
create table answer
(
   answer_id            varchar(64) not null,
   answer_no            int auto_increment,
   answer_title         varchar(255),
   primary key (answer_id)
);

/*==============================================================*/
/* Table: answer_content                                        */
/*==============================================================*/
create table answer_content
(
   answer_content_id    varchar(64) not null,
   answer_id            varchar(64),
   answer_content_no    int auto_increment,
   answer_content       varchar(8000),
   primary key (answer_content_id)
);

/*==============================================================*/
/* Table: category                                              */
/*==============================================================*/
create table category
(
   category_id          varchar(64) not null,
   category_no          int auto_increment,
   category_name        varchar(255),
   category_parent_id   varchar(64),
   primary key (category_id)
);

/*==============================================================*/
/* Table: data                                                  */
/*==============================================================*/
create table data
(
   data_id              varchar(64) not null,
   data_no              int auto_increment,
   post_time            varchar(64),
   primary key (data_id)
);

/*==============================================================*/
/* Table: data_content                                          */
/*==============================================================*/
create table data_content
(
   data_id              varchar(64) not null,
   data_content_id      varchar(64) not null,
   data_content_no      int auto_increment,
   data_content         varchar(8000),
   primary key (data_content_id)
);

/*==============================================================*/
/* Table: document                                              */
/*==============================================================*/
create table document
(
   document_id          varchar(64) not null,
   document_no          int auto_increment,
   document_desc        varchar(255),
   document_name        varchar(64),
   document_physics_path varchar(255),
   document_static_url  varchar(64),
   upload_time          varchar(64),
   primary key (document_id)
);

/*==============================================================*/
/* Table: erp_data_category                                     */
/*==============================================================*/
create table erp_data_category
(
   erp_data_category_id varchar(64) not null,
   data_id              varchar(64),
   category_id          varchar(64),
   erp_data_category_no int auto_increment,
   primary key (erp_data_category_id)
);

/*==============================================================*/
/* Table: erp_data_reply                                        */
/*==============================================================*/
create table erp_data_reply
(
   erp_data_reply_id    varchar(64) not null,
   data_id              varchar(64),
   reply_id             varchar(64),
   erp_data_reply_no    int auto_increment,
   primary key (erp_data_reply_id)
);

/*==============================================================*/
/* Table: erp_document_category                                 */
/*==============================================================*/
create table erp_document_category
(
   erp_document_category_id varchar(64) not null,
   category_id          varchar(64),
   document_id          varchar(64),
   erp_document_category_no int auto_increment,
   primary key (erp_document_category_id)
);

/*==============================================================*/
/* Table: erp_question_answer                                   */
/*==============================================================*/
create table erp_question_answer
(
   erp_question_answer_id varchar(64) not null,
   question_id          varchar(64),
   answer_id            varchar(64),
   erp_question_answer_no int not null auto_increment,
   primary key (erp_question_answer_id)
);

/*==============================================================*/
/* Table: erp_question_category                                 */
/*==============================================================*/
create table erp_question_category
(
   erp_question_category_id varchar(64) not null,
   question_id          varchar(64),
   category_id          varchar(64),
   erp_question_category_no int auto_increment,
   primary key (erp_question_category_id)
);

/*==============================================================*/
/* Table: erp_user_answer                                       */
/*==============================================================*/
create table erp_user_answer
(
   erp_user_answer_id   varchar(64) not null,
   answer_id            varchar(64),
   user_id              varchar(64),
   erp_user_answer_no   int not null auto_increment,
   primary key (erp_user_answer_id)
);

/*==============================================================*/
/* Table: erp_user_data                                         */
/*==============================================================*/
create table erp_user_data
(
   erp_user_data_id     varchar(64) not null,
   user_id              varchar(64),
   data_id              varchar(64),
   erp_user_data_no     int auto_increment,
   primary key (erp_user_data_id)
);

/*==============================================================*/
/* Table: erp_user_document                                     */
/*==============================================================*/
create table erp_user_document
(
   erp_user_document_id varchar(64) not null,
   user_id              varchar(64),
   document_id          varchar(64),
   erp_user_document_no int auto_increment,
   primary key (erp_user_document_id)
);

/*==============================================================*/
/* Table: erp_user_info_user_info_detail                        */
/*==============================================================*/
create table erp_user_info_user_info_detail
(
   erp_user_info_user_info_detail_id varchar(64) not null,
   user_detail_info_id  varchar(64),
   user_id              varchar(64),
   erp_user_info_user_info_detail_no int auto_increment,
   primary key (erp_user_info_user_info_detail_id)
);

/*==============================================================*/
/* Table: erp_user_info_user_status                             */
/*==============================================================*/
create table erp_user_info_user_status
(
   erp_user_info_user_status_id varchar(64) not null,
   user_status_id       varchar(64),
   user_id              varchar(64),
   erp_user_info_user_status_no int auto_increment,
   primary key (erp_user_info_user_status_id)
);

/*==============================================================*/
/* Table: erp_user_question                                     */
/*==============================================================*/
create table erp_user_question
(
   erp_user_question_id varchar(64) not null,
   user_id              varchar(64),
   question_id          varchar(64),
   erp_user_question_no int auto_increment,
   primary key (erp_user_question_id)
);

/*==============================================================*/
/* Table: erp_user_reply                                        */
/*==============================================================*/
create table erp_user_reply
(
   erp_user_reply_id    varchar(64) not null,
   user_id              varchar(64),
   reply_id             varchar(64),
   erp_user_reply_no    int auto_increment,
   primary key (erp_user_reply_id)
);

/*==============================================================*/
/* Table: question                                              */
/*==============================================================*/
create table question
(
   question_id          varchar(64) not null,
   question_no          int auto_increment,
   question_title       varchar(255),
   primary key (question_id)
);

/*==============================================================*/
/* Table: question_content                                      */
/*==============================================================*/
create table question_content
(
   question_content_id  varchar(64) not null,
   question_id          varchar(64),
   question_content_no  int auto_increment,
   question_content     varchar(8000),
   primary key (question_content_id)
);

/*==============================================================*/
/* Table: reply                                                 */
/*==============================================================*/
create table reply
(
   reply_id             varchar(64) not null,
   reply_no             int auto_increment,
   reply_time           varchar(64),
   primary key (reply_id)
);

/*==============================================================*/
/* Table: reply_content                                         */
/*==============================================================*/
create table reply_content
(
   reply_content_id     varchar(64) not null,
   reply_id             varchar(64),
   reply_content_no     int auto_increment,
   reply_content        varchar(8000),
   primary key (reply_content_id)
);

/*==============================================================*/
/* Table: user_detail_info                                      */
/*==============================================================*/
create table user_detail_info
(
   user_detail_info_id  varchar(64) not null,
   user_detail_info_no  int auto_increment,
   user_company         varchar(64),
   user_pay             varchar(64),
   primary key (user_detail_info_id)
);

/*==============================================================*/
/* Table: user_document_download_log                            */
/*==============================================================*/
create table user_document_download_log
(
   user_document_download_log_id varchar(64) not null,
   user_id              varchar(64),
   document_id          varchar(64),
   user_document_download_log_no int auto_increment,
   download_time        varchar(64),
   primary key (user_document_download_log_id)
);

/*==============================================================*/
/* Table: user_info                                             */
/*==============================================================*/
create table user_info
(
   user_id              varchar(64) not null,
   user_no              int auto_increment,
   user_name            varchar(64),
   user_login_id        varchar(64),
   user_login_pwd       varchar(64),
   primary key (user_id)
);

/*==============================================================*/
/* Table: user_status                                           */
/*==============================================================*/
create table user_status
(
   user_status_id       varchar(64) not null,
   user_status_no       int auto_increment,
   user_status_name     varchar(64),
   primary key (user_status_id)
);

alter table answer_content add constraint FK_Reference_6 foreign key (answer_id)
      references answer (answer_id) on delete restrict on update restrict;

alter table data_content add constraint FK_Reference_19 foreign key (data_id)
      references data (data_id) on delete restrict on update restrict;

alter table erp_data_category add constraint FK_Reference_21 foreign key (data_id)
      references data (data_id) on delete restrict on update restrict;

alter table erp_data_category add constraint FK_Reference_22 foreign key (category_id)
      references category (category_id) on delete restrict on update restrict;

alter table erp_data_reply add constraint FK_Reference_25 foreign key (data_id)
      references data (data_id) on delete restrict on update restrict;

alter table erp_data_reply add constraint FK_Reference_26 foreign key (reply_id)
      references reply (reply_id) on delete restrict on update restrict;

alter table erp_document_category add constraint FK_Reference_15 foreign key (category_id)
      references category (category_id) on delete restrict on update restrict;

alter table erp_document_category add constraint FK_Reference_16 foreign key (document_id)
      references document (document_id) on delete restrict on update restrict;

alter table erp_question_answer add constraint FK_Reference_7 foreign key (question_id)
      references question (question_id) on delete restrict on update restrict;

alter table erp_question_answer add constraint FK_Reference_8 foreign key (answer_id)
      references answer (answer_id) on delete restrict on update restrict;

alter table erp_question_category add constraint FK_Reference_13 foreign key (question_id)
      references question (question_id) on delete restrict on update restrict;

alter table erp_question_category add constraint FK_Reference_14 foreign key (category_id)
      references category (category_id) on delete restrict on update restrict;

alter table erp_user_answer add constraint FK_Reference_29 foreign key (answer_id)
      references answer (answer_id) on delete restrict on update restrict;

alter table erp_user_answer add constraint FK_Reference_30 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table erp_user_data add constraint FK_Reference_23 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table erp_user_data add constraint FK_Reference_24 foreign key (data_id)
      references data (data_id) on delete restrict on update restrict;

alter table erp_user_document add constraint FK_Reference_17 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table erp_user_document add constraint FK_Reference_18 foreign key (document_id)
      references document (document_id) on delete restrict on update restrict;

alter table erp_user_info_user_info_detail add constraint FK_Reference_10 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table erp_user_info_user_info_detail add constraint FK_Reference_9 foreign key (user_detail_info_id)
      references user_detail_info (user_detail_info_id) on delete restrict on update restrict;

alter table erp_user_info_user_status add constraint FK_Reference_11 foreign key (user_status_id)
      references user_status (user_status_id) on delete restrict on update restrict;

alter table erp_user_info_user_status add constraint FK_Reference_12 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table erp_user_question add constraint FK_Reference_3 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table erp_user_question add constraint FK_Reference_4 foreign key (question_id)
      references question (question_id) on delete restrict on update restrict;

alter table erp_user_reply add constraint FK_Reference_27 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table erp_user_reply add constraint FK_Reference_28 foreign key (reply_id)
      references reply (reply_id) on delete restrict on update restrict;

alter table question_content add constraint FK_Reference_5 foreign key (question_id)
      references question (question_id) on delete restrict on update restrict;

alter table reply_content add constraint FK_Reference_20 foreign key (reply_id)
      references reply (reply_id) on delete restrict on update restrict;

alter table user_document_download_log add constraint FK_Reference_1 foreign key (user_id)
      references user_info (user_id) on delete restrict on update restrict;

alter table user_document_download_log add constraint FK_Reference_2 foreign key (document_id)
      references document (document_id) on delete restrict on update restrict;
