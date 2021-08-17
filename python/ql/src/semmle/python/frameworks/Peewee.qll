/**
 * Provides classes modeling security-relevant aspects of the `peewee` PyPI package.
 * See
 * - https://pypi.org/project/peewee/
 * - https://docs.peewee-orm.com/en/latest/index.html
 */

private import python
private import semmle.python.dataflow.new.DataFlow
private import semmle.python.dataflow.new.TaintTracking
private import semmle.python.Concepts
private import semmle.python.ApiGraphs
private import semmle.python.frameworks.PEP249

/**
 * Provides models for the `peewee` PyPI package.
 * See
 * - https://pypi.org/project/peewee/
 * - https://docs.peewee-orm.com/en/latest/index.html
 */
private module Peewee {
  /** Provides models for the `peewee.Database` class and subclasses. */
  module Database {
    /** Gets a reference to the `peewee.Database` class or any subclass. */
    API::Node subclassRef() {
      result = API::moduleImport("peewee").getMember("Database").getASubclass*()
      or
      // known subclasses
      result =
        API::moduleImport("peewee")
            .getMember(["SqliteDatabase", "MySQLDatabase", "PostgresqlDatabase"])
            .getASubclass*()
      or
      // Ohter known subclasses, semi auto generated by using
      // ```codeql
      // class DBClass extends Class, SelfRefMixin {
      //   DBClass() {
      //     exists(this.getLocation().getFile().getRelativePath()) and
      //     this.getName().matches("%Database") and
      //     this.getABase().(Name).getId().matches("%Database")
      //   }
      // }
      //
      // from DBClass dbClass, Module mod
      // where
      //   dbClass.getScope() = mod
      // select mod.getName()+ "." + dbClass.getName()
      // ```
      result =
        API::moduleImport("playhouse")
            .getMember("apsw_ext")
            .getMember("APSWDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("cockroachdb")
            .getMember("CockroachDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("cockroachdb")
            .getMember("PooledCockroachDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("mysql_ext")
            .getMember("MySQLConnectorDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("pool")
            .getMember("PooledCSqliteExtDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("pool")
            .getMember("PooledMySQLDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("pool")
            .getMember("PooledPostgresqlDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("pool")
            .getMember("PooledPostgresqlExtDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("pool")
            .getMember("PooledSqliteDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("pool")
            .getMember("PooledSqliteExtDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("pool")
            .getMember("_PooledPostgresqlDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("pool")
            .getMember("_PooledSqliteDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("postgres_ext")
            .getMember("PostgresqlExtDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("sqlcipher_ext")
            .getMember("SqlCipherDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("sqlcipher_ext")
            .getMember("SqlCipherExtDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("sqlite_ext")
            .getMember("CSqliteExtDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("sqlite_ext")
            .getMember("SqliteExtDatabase")
            .getASubclass*()
      or
      result =
        API::moduleImport("playhouse")
            .getMember("sqliteq")
            .getMember("SqliteQueueDatabase")
            .getASubclass*()
    }

    /** Gets a reference to an instance of `peewee.Database` or any subclass. */
    API::Node instance() { result = subclassRef().getReturn() }
  }

  /**
   * A call to the `connection` method on a `peewee.Database` instance.
   * https://docs.peewee-orm.com/en/latest/peewee/api.html#Database.connection.
   */
  class PeeweeDatabaseConnectionCall extends PEP249::Connection::InstanceSource,
    DataFlow::CallCfgNode {
    PeeweeDatabaseConnectionCall() {
      this = Database::instance().getMember("connection").getACall()
    }
  }

  /**
   * A call to the `cursor` method on a `peewee.Database` instance.
   * https://docs.peewee-orm.com/en/latest/peewee/api.html#Database.cursor.
   */
  class PeeweeDatabaseCursorCall extends PEP249::Cursor::InstanceSource, DataFlow::CallCfgNode {
    PeeweeDatabaseCursorCall() { this = Database::instance().getMember("cursor").getACall() }
  }

  /**
   * A call to the `execute_sql` method on a `peewee.Database` instance.
   * See https://docs.peewee-orm.com/en/latest/peewee/api.html#Database.execute_sql.
   */
  class PeeweeDatabaseExecuteSqlCall extends SqlExecution::Range, DataFlow::CallCfgNode {
    PeeweeDatabaseExecuteSqlCall() {
      this = Database::instance().getMember("execute_sql").getACall()
    }

    override DataFlow::Node getSql() { result in [this.getArg(0), this.getArgByName("sql")] }
  }
}
