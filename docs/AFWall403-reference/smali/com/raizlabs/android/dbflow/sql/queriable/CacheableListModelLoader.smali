.class public Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;
.super Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
.source "CacheableListModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;"
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

    .line 23
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            "Ljava/util/List<",
            "TTModel;>;)",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingColumns()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingColumnValuesFromCursor([Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)[Ljava/lang/Object;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v2

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingId([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 67
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->reloadRelationships(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)V

    .line 68
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v3

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingId([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    return-object p2
.end method

.method public getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 45
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->cachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot call this method for a table that has no caching id. Eitheruse one Primary Key or use the MultiCacheKeyConverter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-Table type was used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    return-object v0
.end method

.method public getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 29
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ModelCache specified in convertToCacheableList() must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableListModelLoader;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    return-object v0
.end method
