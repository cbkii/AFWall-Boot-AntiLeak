.class public Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;
.super Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
.source "AutoIncrementModelSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
        "TTModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)J"
        }
    .end annotation

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")J"
        }
    .end annotation

    const-string v0, "Ignoring insert statement "

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->hasAutoIncrement(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 54
    :cond_0
    :try_start_1
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " since an autoincrement column specified in the insert."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p1, p3}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")J"
        }
    .end annotation

    monitor-enter p0

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->hasAutoIncrement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCompiledStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v1

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 35
    :goto_1
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeInsert()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V

    .line 38
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object p2

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/AutoIncrementModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    sget-object v4, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p2, p1, v0, v4}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    monitor-exit p0

    return-wide v2

    :catchall_0
    move-exception p1

    .line 42
    :try_start_3
    invoke-interface {v1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 43
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
