.class public Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;
.super Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;
.source "AlterTableMigration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;"
    }
.end annotation


# instance fields
.field private columnDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/QueryBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private columnNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oldTableName:Ljava/lang/String;

.field private query:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

.field private renameQuery:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

.field private final table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/migration/BaseMigration;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->table:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public addColumn(Lcom/raizlabs/android/dbflow/sql/SQLiteType;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/SQLiteType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnNames:Ljava/util/List;

    .line 127
    :cond_0
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    .line 128
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSQLiteType(Lcom/raizlabs/android/dbflow/sql/SQLiteType;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnNames:Ljava/util/List;

    .line 130
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addForeignKeyColumn(Lcom/raizlabs/android/dbflow/sql/SQLiteType;Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/SQLiteType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnNames:Ljava/util/List;

    .line 150
    :cond_0
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    .line 151
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->quoteIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSQLiteType(Lcom/raizlabs/android/dbflow/sql/SQLiteType;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpace()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    const-string v0, "REFERENCES "

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    .line 153
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnNames:Ljava/util/List;

    .line 154
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAlterTableQueryBuilder()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->query:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    const-string v1, "ALTER"

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    const-string v1, "TABLE"

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->query:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->query:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    return-object v0
.end method

.method public getColumnDefinitions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->getAlterTableQueryBuilder()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->table:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 177
    new-instance v4, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v4, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    const-string v5, "ADD COLUMN"

    invoke-virtual {v4, v5}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v4

    .line 178
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {v4, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRenameQuery()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->getAlterTableQueryBuilder()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->oldTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQuotedIfNeeded(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->renameQuery:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 164
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->table:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final migrate(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 6

    .line 55
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->getAlterTableQueryBuilder()Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->table:Ljava/lang/Class;

    .line 56
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->renameQuery:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    if-eqz v2, :cond_0

    .line 61
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v2, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->oldTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendQuotedIfNeeded(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->renameQuery:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    .line 62
    invoke-virtual {v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-interface {p1, v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 72
    invoke-static {v3}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v3

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->table:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/raizlabs/android/dbflow/sql/language/From;->limit(I)Lcom/raizlabs/android/dbflow/sql/language/Where;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/raizlabs/android/dbflow/sql/language/Where;->query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 75
    :try_start_0
    new-instance v4, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {v4, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iget-object v4, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnNames:Ljava/util/List;

    .line 78
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ADD COLUMN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 85
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public onPostMigrate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->query:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->renameQuery:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnDefinitions:Ljava/util/List;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->columnNames:Ljava/util/List;

    return-void
.end method

.method public renameFrom(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->oldTableName:Ljava/lang/String;

    .line 109
    new-instance p1, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    invoke-direct {p1}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;-><init>()V

    const-string v0, " RENAME"

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->append(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    const-string v0, "TO"

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/QueryBuilder;->appendSpaceSeparated(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/migration/AlterTableMigration;->renameQuery:Lcom/raizlabs/android/dbflow/sql/QueryBuilder;

    return-object p0
.end method
