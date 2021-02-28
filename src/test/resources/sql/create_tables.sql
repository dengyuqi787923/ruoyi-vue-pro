-- inf 开头的 DB

CREATE TABLE "inf_config" (
    "id" int NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "group" varchar(50) NOT NULL,
    "type" tinyint NOT NULL,
    "name" varchar(100) NOT NULL DEFAULT '',
    "key" varchar(100) NOT NULL DEFAULT '',
    "value" varchar(500) NOT NULL DEFAULT '',
    "sensitive" bit NOT NULL,
    "remark" varchar(500) DEFAULT NULL,
    "create_by" varchar(64) DEFAULT '',
    "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_by" varchar(64) DEFAULT '',
    "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '参数配置表';

-- sys 开头的 DB

CREATE TABLE "sys_dept" (
    "id" bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "name" varchar(30) NOT NULL DEFAULT '',
    "parent_id" bigint NOT NULL DEFAULT '0',
    "sort" int NOT NULL DEFAULT '0',
    "leader" varchar(20) DEFAULT NULL,
    "phone" varchar(11) DEFAULT NULL,
    "email" varchar(50) DEFAULT NULL,
    "status" tinyint NOT NULL,
    "create_by" varchar(64) DEFAULT '',
    "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_by" varchar(64) DEFAULT '',
    "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '部门表';

CREATE TABLE "sys_dict_data" (
    "id" bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "sort" int NOT NULL DEFAULT '0',
    "label" varchar(100) NOT NULL DEFAULT '',
    "value" varchar(100) NOT NULL DEFAULT '',
    "dict_type" varchar(100) NOT NULL DEFAULT '',
    "status" tinyint NOT NULL DEFAULT '0',
    "remark" varchar(500) DEFAULT NULL,
    "create_by" varchar(64) DEFAULT '',
    "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_by" varchar(64) DEFAULT '',
    "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '字典数据表';

CREATE TABLE "sys_role" (
    "id" bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "name" varchar(30) NOT NULL,
    "code" varchar(100) NOT NULL,
    "sort" int NOT NULL,
    "data_scope" tinyint NOT NULL DEFAULT '1',
    "data_scope_dept_ids" varchar(500) NOT NULL DEFAULT '',
    "status" tinyint NOT NULL,
    "type" tinyint NOT NULL,
    "remark" varchar(500) DEFAULT NULL,
    "create_by" varchar(64) DEFAULT '',
    "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_by" varchar(64) DEFAULT '',
    "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '角色信息表';

CREATE TABLE "sys_role_menu" (
    "id" bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "role_id" bigint NOT NULL,
    "menu_id" bigint NOT NULL,
    "create_by" varchar(64) DEFAULT '',
    "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_by" varchar(64) DEFAULT '',
    "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '角色和菜单关联表';

CREATE TABLE "sys_menu" (
    "id" bigint NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    "name" varchar(50) NOT NULL,
    "permission" varchar(100) NOT NULL DEFAULT '',
    "menu_type" tinyint NOT NULL,
    "sort" int NOT NULL DEFAULT '0',
    "parent_id" bigint NOT NULL DEFAULT '0',
    "path" varchar(200) DEFAULT '',
    "icon" varchar(100) DEFAULT '#',
    "component" varchar(255) DEFAULT NULL,
    "status" tinyint NOT NULL DEFAULT '0',
    "create_by" varchar(64) DEFAULT '',
    "create_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "update_by" varchar(64) DEFAULT '',
    "update_time" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "deleted" bit NOT NULL DEFAULT FALSE,
    PRIMARY KEY ("id")
) COMMENT '菜单权限表';