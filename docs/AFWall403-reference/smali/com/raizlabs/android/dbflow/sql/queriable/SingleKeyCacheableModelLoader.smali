.class public Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;
.super Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;
.source "SingleKeyCacheableModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader<",
        "TTModel;>;"
    }
.end annotation


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

    .line 16
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/CacheableModelLoader;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            "TTModel;Z)TTModel;"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getCachingColumnValueFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;

    move-result-object p3

    .line 31
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    if-nez p2, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 38
    :cond_2
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;->getModelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p2

    goto :goto_1

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleKeyCacheableModelLoader;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->reloadRelationships(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)V

    :goto_1
    return-object v0
.end method
