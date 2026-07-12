.class public Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;
.super Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
.source "SparseArrayBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
        "TTModel;",
        "Landroid/util/SparseArray<",
        "TTModel;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addModel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTModel;)V"
        }
    .end annotation

    .line 41
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;->getCache()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A SparseArrayBasedCache must use an id that can cast to a Number to convert it into a int"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;->getCache()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 74
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A SparseArrayBasedCache uses an id that can cast to a Number to convert it into a int"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTModel;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;->getCache()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    monitor-enter v1

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/cache/SparseArrayBasedCache;->getCache()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 56
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCacheSize(I)V
    .locals 1

    .line 69
    sget-object p1, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->I:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v0, "The cache size for SparseArrayBasedCache is not re-configurable."

    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    return-void
.end method
