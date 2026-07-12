.class public Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
.super Ljava/lang/Object;
.source "FlowQueryList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/list/FlowQueryList;
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

.field private changeInTransaction:Z

.field private contentAuthority:Ljava/lang/String;

.field private cursor:Landroid/database/Cursor;

.field private error:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

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

.field private success:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

.field private final table:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private transact:Z


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowCursorList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cacheModels:Z

    .line 680
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->table()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->table:Ljava/lang/Class;

    .line 681
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cursor:Landroid/database/Cursor;

    .line 682
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->cachingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cacheModels:Z

    .line 683
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelQueriable()Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    .line 684
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/list/FlowCursorList;->modelCache()Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowCursorList;Lcom/raizlabs/android/dbflow/list/FlowQueryList$1;)V
    .locals 0

    .line 663
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;-><init>(Lcom/raizlabs/android/dbflow/list/FlowCursorList;)V

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 692
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;-><init>(Ljava/lang/Class;)V

    .line 693
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->modelQueriable(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;

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

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cacheModels:Z

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->table:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Ljava/lang/String;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->contentAuthority:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Z
    .locals 0

    .line 663
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->transact:Z

    return p0
.end method

.method static synthetic access$200(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Z
    .locals 0

    .line 663
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->changeInTransaction:Z

    return p0
.end method

.method static synthetic access$300(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->success:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-object p0
.end method

.method static synthetic access$400(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->error:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-object p0
.end method

.method static synthetic access$500(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    return-object p0
.end method

.method static synthetic access$600(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Z
    .locals 0

    .line 663
    iget-boolean p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cacheModels:Z

    return p0
.end method

.method static synthetic access$800(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Landroid/database/Cursor;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;)Ljava/lang/Class;
    .locals 0

    .line 663
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->table:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/raizlabs/android/dbflow/list/FlowQueryList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList<",
            "TTModel;>;"
        }
    .end annotation

    .line 745
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;-><init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;Lcom/raizlabs/android/dbflow/list/FlowQueryList$1;)V

    return-object v0
.end method

.method public cacheModels(Z)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cacheModels:Z

    return-object p0
.end method

.method public changeInTransaction(Z)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->changeInTransaction:Z

    return-object p0
.end method

.method public contentAuthority(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->contentAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public cursor(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method public error(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;",
            ")",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->error:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    return-object p0
.end method

.method public modelCache(Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/cache/ModelCache<",
            "TTModel;*>;)",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->modelCache:Lcom/raizlabs/android/dbflow/structure/cache/ModelCache;

    return-object p0
.end method

.method public modelQueriable(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->modelQueriable:Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;

    return-object p0
.end method

.method public success(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;",
            ")",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->success:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    return-object p0
.end method

.method public transact(Z)Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder<",
            "TTModel;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$Builder;->transact:Z

    return-object p0
.end method
