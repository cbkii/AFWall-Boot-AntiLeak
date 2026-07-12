.class public Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;
.super Ljava/lang/Object;
.source "ModelSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final INSERT_FAILED:I = -0x1


# instance fields
.field private modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 136
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getDeleteStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 156
    invoke-virtual {v0, p1, p3}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->deleteForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 157
    invoke-virtual {p3, p2, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 159
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeUpdateDelete()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 161
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object p3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->DELETE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p3, p1, v0, v1}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_1
    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 163
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 141
    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getDeleteStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 147
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 148
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    return-object v0
.end method

.method protected getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 169
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)J"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 105
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getInsertStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 125
    invoke-virtual {v0, p1, p3}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 126
    invoke-virtual {p3, p2, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 127
    invoke-interface {p2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeInsert()J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 129
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->updateAutoIncrement(Ljava/lang/Object;Ljava/lang/Number;)V

    .line 130
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->INSERT:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {v0, p1, v1, v2}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-wide p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")J"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 110
    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 116
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 117
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getInsertStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v1

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 30
    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v2

    .line 29
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 45
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object p2

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p2, p1, v1, v2}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Landroid/content/ContentValues;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 188
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0, p1, p2, p4}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Landroid/content/ContentValues;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 195
    invoke-virtual {p0, p1, p3, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-lez p4, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 199
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object p2

    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    sget-object p4, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p2, p1, p3, p4}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->exists(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1, p2, p4}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p0, p1, p3, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-lez p4, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 68
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object p2

    iget-object p3, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    sget-object p4, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->SAVE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p2, p1, p3, p4}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setModelAdapter(Lcom/raizlabs/android/dbflow/structure/ModelAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    return-void
.end method

.method public declared-synchronized update(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getWritableDatabase()Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getUpdateStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 80
    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 86
    :try_start_3
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 87
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Landroid/content/ContentValues;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 214
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 215
    invoke-virtual {v0, p3, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToContentValues(Landroid/content/ContentValues;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 216
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 217
    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 218
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getUpdateOnConflictAction()Lcom/raizlabs/android/dbflow/annotation/ConflictAction;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->getSQLiteDatabaseAlgorithmInt(Lcom/raizlabs/android/dbflow/annotation/ConflictAction;)I

    move-result v6

    move-object v1, p2

    move-object v3, p3

    .line 216
    invoke-interface/range {v1 .. v6}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 220
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object p3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p3, p1, v0, v1}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 94
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->saveForeignKeys(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 95
    invoke-virtual {p2, p3, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->bindToUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 96
    invoke-interface {p3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeUpdateDelete()J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 98
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object p3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    sget-object v1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->UPDATE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-virtual {p3, p1, v0, v1}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
