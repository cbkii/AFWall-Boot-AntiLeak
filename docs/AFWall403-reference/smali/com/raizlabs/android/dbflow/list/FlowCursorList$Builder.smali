.class public Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;
.super Ljava/lang/Object;
.source "FlowCursorList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/list/FlowCursorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cacheModels:Z

.field private cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

.field private modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;"
        }
    .end annotation
.end field

.field private final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
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


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cacheModels:Z

    .line 323
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelClass:Ljava/lang/Class;

    .line 324
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cacheModels:Z

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Ljava/lang/Class;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$100(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Z
    .locals 0

    .line 310
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cacheModels:Z

    return p0
.end method

.method static synthetic access$400(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;)Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/raizlabs/android/dbflow/list/FlowCursorList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList<",
            "TTModel;>;"
        }
    .end annotation

    .line 358
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;-><init>(Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;Lcom/raizlabs/android/dbflow/list/FlowCursorList$1;)V

    return-object v0
.end method

.method public cacheModels(Z)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cacheModels:Z

    return-object p0
.end method

.method public cursor(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 330
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    :cond_0
    return-object p0
.end method

.method public modelCache(Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;)",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 351
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->cacheModels(Z)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;

    :cond_0
    return-object p0
.end method

.method public modelQueriable(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorList$Builder;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    return-object p0
.end method
