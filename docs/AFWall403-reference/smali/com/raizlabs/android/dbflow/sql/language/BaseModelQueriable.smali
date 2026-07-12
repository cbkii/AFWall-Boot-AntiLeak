.class public abstract Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;
.super Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;
.source "BaseModelQueriable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/sql/Query;"
    }
.end annotation


# instance fields
.field private cachingEnabled:Z

.field private retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
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

    .line 40
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/BaseQueriable;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->cachingEnabled:Z

    return-void
.end method

.method private getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->cachingEnabled:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getNonCacheableListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    return-object v0
.end method

.method private getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
            "TTModel;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->cachingEnabled:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public async()Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery<",
            "TTModel;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;-><init>(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V

    return-object v0
.end method

.method public cursorList()Lcom/raizlabs/android/dbflow/list/FlowCursorList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList<",
            "TTModel;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;-><init>(Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->cachingEnabled:Z

    .line 91
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cacheModels(Z)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->build()Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    move-result-object v0

    return-object v0
.end method

.method public disableCaching()Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->cachingEnabled:Z

    return-object p0
.end method

.method public executeUpdateDelete()J
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getWritableDatabaseForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->executeUpdateDelete(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J

    move-result-wide v0

    return-wide v0
.end method

.method public executeUpdateDelete(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .locals 5

    .line 111
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;->compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;

    move-result-object p1

    .line 114
    :try_start_0
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->executeUpdateDelete()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 118
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;->close()V

    .line 122
    throw v0
.end method

.method public flowQueryList()Lcom/raizlabs/android/dbflow/list/FlowQueryList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList<",
            "TTModel;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;-><init>(Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->cachingEnabled:Z

    .line 99
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cacheModels(Z)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->build()Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    move-result-object v0

    return-object v0
.end method

.method public queryCustomList(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<QueryClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQueryClass;>;)",
            "Ljava/util/List<",
            "TQueryClass;>;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object p1

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->cachingEnabled:Z

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getNonCacheableListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public queryCustomSingle(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<QueryClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQueryClass;>;)TQueryClass;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 147
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 148
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object p1

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->cachingEnabled:Z

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getNonCacheableSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public queryList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryList(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryResults()Lcom/raizlabs/android/dbflow/sql/language/CursorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/CursorResult<",
            "TTModel;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;

    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getRetrievalAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;-><init>(Ljava/lang/Class;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public querySingle()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public querySingle(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")TTModel;"
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->V:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Executing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/sql/language/BaseModelQueriable;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
