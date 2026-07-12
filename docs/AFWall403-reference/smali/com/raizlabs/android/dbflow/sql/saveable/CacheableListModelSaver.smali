.class public Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;
.super Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;
.source "CacheableListModelSaver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver<",
        "TTModel;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/saveable/ListModelSaver;-><init>(Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 93
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    .line 97
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->removeModelFromCache(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 50
    monitor-exit p0

    return-void

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 58
    invoke-virtual {v0, v3, v2, p2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->insert(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 59
    invoke-virtual {v1, v3}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->storeModelInCache(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 63
    :cond_2
    :try_start_3
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 63
    :try_start_4
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 64
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 26
    monitor-exit p0

    return-void

    .line 29
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    .line 31
    invoke-virtual {v1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getInsertStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v2

    .line 32
    invoke-virtual {v1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-virtual {v0, v4, p2, v2, v3}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->save(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    invoke-virtual {v1, v4}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->storeModelInCache(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 40
    :cond_2
    :try_start_3
    invoke-interface {v3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 41
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 40
    :try_start_4
    invoke-interface {v3}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 41
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 42
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateAll(Ljava/util/Collection;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 72
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/saveable/CacheableListModelSaver;->getModelSaver()Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    .line 76
    invoke-virtual {v1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getUpdateStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :try_start_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 79
    invoke-virtual {v0, v3, p2, v2}, Lcom/raizlabs/android/dbflow/sql/saveable/ModelSaver;->update(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-virtual {v1, v3}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->storeModelInCache(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 84
    :cond_2
    :try_start_3
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_4
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 85
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
