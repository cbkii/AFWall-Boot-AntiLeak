.class public Lcom/raizlabs/android/dbflow/list/FlowCursorList;
.super Ljava/lang/Object;
.source "FlowCursorList.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;,
        Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TTModel;>;",
        "Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator<",
        "TTModel;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = 0x32

.field public static final MIN_CACHE_SIZE:I = 0x14


# instance fields
.field private cacheModels:Z

.field private cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

.field private final cursorRefreshListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener<",
            "TTModel;>;>;"
        }
    .end annotation
.end field

.field private instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
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

.field private modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursorRefreshListenerSet:Ljava/util/Set;

    .line 66
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->access$000(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table:Ljava/lang/Class;

    .line 67
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->access$100(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    .line 68
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->access$100(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->access$200(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 72
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/SQLite;->select([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Select;

    move-result-object v0

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/raizlabs/android/dbflow/sql/language/Select;->from(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/sql/language/From;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    .line 73
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->access$100(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    move-result-object v0

    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    .line 78
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->access$300(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    if-eqz v0, :cond_2

    .line 80
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->access$400(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    if-nez v0, :cond_2

    .line 83
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/structure/cache/ModelLruCache;->newInstance(I)Lcom/raizlabs/android/dbflow/structure/cache/ModelLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    .line 86
    :cond_2
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->access$000(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    iget-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->setCacheModels(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;Lcom/raizlabs/android/dbflow/list/FlowCursorList$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;-><init>(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)V

    return-void
.end method

.method private throwIfCursorClosed()V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor has been closed for FlowCursorList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private warnEmptyCursor()V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowLog$Level;->W:Lcom/raizlabs/android/dbflow/config/FlowLog$Level;

    const-string v1, "Cursor was null for FlowCursorList"

    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/config/FlowLog;->log(Lcom/raizlabs/android/dbflow/config/FlowLog$Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener<",
            "TTModel;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursorRefreshListenerSet:Ljava/util/Set;

    .line 117
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursorRefreshListenerSet:Ljava/util/Set;

    .line 118
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cachingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    return v0
.end method

.method public clearCache()V
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    .line 146
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->clear()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->warnEmptyCursor()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    return-void
.end method

.method public cursor()Landroid/database/Cursor;
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->throwIfCursorClosed()V

    .line 271
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->warnEmptyCursor()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->throwIfCursorClosed()V

    .line 214
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->warnEmptyCursor()V

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table:Ljava/lang/Class;

    .line 217
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 219
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->iterator()Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 221
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getCount()J
    .locals 2

    .line 241
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->throwIfCursorClosed()V

    .line 242
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->warnEmptyCursor()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    return-object v0
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTModel;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->throwIfCursorClosed()V

    .line 192
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->warnEmptyCursor()V

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    .line 196
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v3, :cond_0

    long-to-int v4, p1

    .line 197
    invoke-virtual {v3, v4}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    .line 198
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v0

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-virtual {v0, v3, v2, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    .line 199
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->addModel(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_2

    long-to-int p2, p1

    .line 201
    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    .line 202
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-virtual {p1, p2, v2, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->instanceAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    .line 98
    check-cast v0, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 5

    .line 231
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->throwIfCursorClosed()V

    .line 232
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->warnEmptyCursor()V

    .line 233
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;)V

    return-object v0
.end method

.method public iterator(IJ)Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;IJ)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->iterator()Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    move-result-object v0

    return-object v0
.end method

.method public modelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    return-object v0
.end method

.method public modelQueriable()Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    return-object v0
.end method

.method public newBuilder()Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    .line 298
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    .line 299
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    .line 300
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cursor(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    .line 301
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cacheModels(Z)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    .line 302
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelCache(Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized refresh()V
    .locals 3

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->warnEmptyCursor()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    if-eqz v0, :cond_3

    .line 162
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    .line 165
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;->clear()V

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->setCacheModels(Z)V

    :cond_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursorRefreshListenerSet:Ljava/util/Set;

    .line 169
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursorRefreshListenerSet:Ljava/util/Set;

    .line 170
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;

    .line 171
    invoke-interface {v2, p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;->onCursorRefreshed(Lcom/raizlabs/android/dbflow/list/FlowCursorList;)V

    goto :goto_0

    .line 173
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 173
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    .line 159
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refresh this FlowCursorList. This list was instantiated from a Cursor. Once closed, we cannot reopen it. Construct a new instance and swap with this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeOnCursorRefreshListener(Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$OnCursorRefreshListener<",
            "TTModel;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursorRefreshListenerSet:Ljava/util/Set;

    .line 123
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursorRefreshListenerSet:Ljava/util/Set;

    .line 124
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setCacheModels(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cacheModels:Z

    if-nez p1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->clearCache()V

    :cond_0
    return-void
.end method

.method public table()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table:Ljava/lang/Class;

    return-object v0
.end method
