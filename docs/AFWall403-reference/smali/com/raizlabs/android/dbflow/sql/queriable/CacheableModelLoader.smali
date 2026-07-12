.class public Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;
.super Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;
.source "CacheableModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader<",
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

    .line 21
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            "TTModel;Z)TTModel;"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p3

    .line 59
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingColumns()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p3, v0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingColumnValuesFromCursor([Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)[Ljava/lang/Object;

    move-result-object p3

    .line 60
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingId([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object p1

    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingId([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p2

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->reloadRelationships(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)V

    :goto_1
    return-object v0
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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    .line 32
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->cachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot call this method for a table that has no caching id. Eitheruse one Primary Key or use the MultiCacheKeyConverter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-Table type was used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->modelAdapter:Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    return-object v0
.end method

.method public getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    return-object v0
.end method
