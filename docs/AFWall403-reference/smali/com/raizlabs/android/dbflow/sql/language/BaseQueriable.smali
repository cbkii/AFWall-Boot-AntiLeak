.class public abstract Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;
.super Ljava/lang/Object;
.source "BaseQueriable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/queriable/Queriable;
.implements Lcom/raizlabs/android/dbflow/sql/language/Actionable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/queriable/Queriable;",
        "Lcom/raizlabs/android/dbflow/sql/language/Actionable;"
    }
.end annotation


# instance fields
.field private final table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->table:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public compileStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->table:Ljava/lang/Class;

    .line 152
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->compileStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0

    return-object v0
.end method

.method public compileStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 159
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Compiling Query Into Statement: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatementWrapper;-><init>(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;)V

    return-object v1
.end method

.method public count()J
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public count(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->longValue(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v0

    return-wide v0
.end method

.method public execute()V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :goto_0
    return-void
.end method

.method public execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 2

    .line 140
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :goto_0
    return-void
.end method

.method public executeInsert()J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->table:Ljava/lang/Class;

    .line 112
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->executeInsert(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeInsert(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 2

    .line 117
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->compileStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object p1

    .line 120
    :try_start_0
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeInsert()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 123
    throw v0
.end method

.method public abstract getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
.end method

.method public getTable()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->table:Ljava/lang/Class;

    return-object v0
.end method

.method public hasData()Z
    .locals 5

    .line 81
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasData(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 4

    .line 86
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->count(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public longValue()J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->table:Ljava/lang/Class;

    .line 63
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->longValue(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v0

    return-wide v0
.end method

.method public longValue(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 4

    const-string v0, "Executing query: "

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 70
    sget-object v2, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 71
    invoke-static {p1, v1}, Lcom/raizlabs/android/dbflow/sql/SqlUtils;->longForQuery(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 74
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    invoke-static {v0, p1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->table:Ljava/lang/Class;

    .line 91
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v0

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->compileStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeInsert()J

    .line 101
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->execSQL(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
