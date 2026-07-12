.class public Lcom/raizlabs/android/dbflow/structure/cache/SimpleMapCache;
.super Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
.source "SimpleMapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
        "TTModel;",
        "Ljava/util/Map<",
        "Ljava/lang/Object;",
        "TTModel;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "TTModel;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addModel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTModel;)V"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SimpleMapCache;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SimpleMapCache;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTModel;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SimpleMapCache;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTModel;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SimpleMapCache;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setCacheSize(I)V
    .locals 1

    .line 57
    sget-object p1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v0, "The cache size for SimpleMapCache is not re-configurable."

    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    return-void
.end method
