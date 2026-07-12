.class public Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;
.super Landroid/database/ContentObserver;
.source "FlowContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$ContentChangeListener;,
        Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;
    }
.end annotation


# static fields
.field private static final REGISTERED_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static forceNotify:Z


# instance fields
.field private final contentAuthority:Ljava/lang/String;

.field protected isInTransaction:Z

.field private final modelChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private notifyAllUris:Z

.field private final onTableChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredTables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final tableUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->REGISTERED_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    sput-boolean v1, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->forceNotify:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 91
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->modelChangeListeners:Ljava/util/Set;

    .line 92
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registeredTables:Ljava/util/Map;

    .line 94
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notificationUris:Ljava/util/Set;

    .line 95
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->tableUris:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->isInTransaction:Z

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notifyAllUris:Z

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->contentAuthority:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->modelChangeListeners:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registeredTables:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notificationUris:Ljava/util/Set;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->tableUris:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->isInTransaction:Z

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notifyAllUris:Z

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->contentAuthority:Ljava/lang/String;

    return-void
.end method

.method public static clearRegisteredObserverCount()V
    .locals 2

    sget-object v0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->REGISTERED_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private onChange(ZLandroid/net/Uri;Z)V
    .locals 7

    .line 259
    invoke-virtual {p2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tableName"

    .line 260
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 266
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 267
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 269
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "tableName"

    .line 270
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 271
    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 272
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    new-instance v6, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    invoke-direct {v6, v4}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v4

    invoke-static {v4}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->op(Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v4

    .line 274
    invoke-virtual {v4, v5}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->eq(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/Operator;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registeredTables:Ljava/util/Map;

    .line 280
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 281
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object p1

    iget-boolean v1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->isInTransaction:Z

    if-nez v1, :cond_3

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->modelChangeListeners:Ljava/util/Set;

    .line 284
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;

    .line 285
    invoke-interface {v1, v0, p1, v2}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;->onModelStateChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_5

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 289
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    .line 290
    invoke-interface {p3, v0, p1}, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    goto :goto_2

    :cond_3
    iget-boolean p3, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notifyAllUris:Z

    if-nez p3, :cond_4

    .line 296
    sget-object p1, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->contentAuthority:Ljava/lang/String;

    .line 297
    invoke-static {p2, v0, p1}, Lcom/raizlabs/android/dbflow/sql/SqlUtils;->getNotificationUri(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)Landroid/net/Uri;

    move-result-object p2

    :cond_4
    iget-object p3, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notificationUris:Ljava/util/Set;

    .line 299
    monitor-enter p3

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notificationUris:Ljava/util/Set;

    .line 301
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->tableUris:Ljava/util/Set;

    .line 304
    monitor-enter p2

    :try_start_1
    iget-object p3, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->tableUris:Ljava/util/Set;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->contentAuthority:Ljava/lang/String;

    .line 305
    invoke-static {v1, v0, p1}, Lcom/raizlabs/android/dbflow/sql/SqlUtils;->getNotificationUri(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    monitor-exit p2

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 302
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public static setShouldForceNotify(Z)V
    .locals 0

    sput-boolean p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->forceNotify:Z

    return-void
.end method

.method public static shouldNotify()Z
    .locals 1

    sget-boolean v0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->forceNotify:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->REGISTERED_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addContentChangeListener(Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$ContentChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->modelChangeListeners:Ljava/util/Set;

    .line 192
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 193
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addModelChangeListener(Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->modelChangeListeners:Ljava/util/Set;

    .line 166
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnTableChangedListener(Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 179
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginTransaction()V
    .locals 1

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->isInTransaction:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->isInTransaction:Z

    :cond_0
    return-void
.end method

.method public endTransactionAndNotify()V
    .locals 7

    iget-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->isInTransaction:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->isInTransaction:Z

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notificationUris:Ljava/util/Set;

    .line 141
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notificationUris:Ljava/util/Set;

    .line 142
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const/4 v3, 0x1

    .line 143
    invoke-direct {p0, v3, v2, v3}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onChange(ZLandroid/net/Uri;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notificationUris:Ljava/util/Set;

    .line 145
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->tableUris:Ljava/util/Set;

    .line 147
    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->tableUris:Ljava/util/Set;

    .line 148
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 149
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    iget-object v5, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registeredTables:Ljava/util/Map;

    .line 150
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 151
    invoke-virtual {v2}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    move-result-object v6

    .line 150
    invoke-interface {v4, v5, v6}, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->tableUris:Ljava/util/Set;

    .line 154
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 155
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 146
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method public isSubscribed()Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registeredTables:Ljava/util/Map;

    .line 237
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->modelChangeListeners:Ljava/util/Set;

    .line 242
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;

    .line 243
    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    invoke-interface {v0, v1, v2, v3}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;->onModelStateChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 246
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    .line 247
    sget-object v2, Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;->CHANGE:Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 254
    invoke-direct {p0, p1, p2, v0}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onChange(ZLandroid/net/Uri;Z)V

    return-void
.end method

.method public registerForContentChanges(Landroid/content/ContentResolver;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->contentAuthority:Ljava/lang/String;

    const/4 v1, 0x0

    .line 220
    invoke-static {v0, p2, v1}, Lcom/raizlabs/android/dbflow/sql/SqlUtils;->getNotificationUri(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    .line 219
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object p1, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->REGISTERED_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 221
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registeredTables:Ljava/util/Map;

    .line 222
    invoke-interface {p1, p2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registeredTables:Ljava/util/Map;

    .line 223
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public registerForContentChanges(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registerForContentChanges(Landroid/content/ContentResolver;Ljava/lang/Class;)V

    return-void
.end method

.method public removeContentChangeListener(Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$ContentChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->modelChangeListeners:Ljava/util/Set;

    .line 202
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 203
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeModelChangeListener(Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver$OnModelStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->modelChangeListeners:Ljava/util/Set;

    .line 175
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTableChangedListener(Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->onTableChangedListeners:Ljava/util/Set;

    .line 183
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNotifyAllUris(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->notifyAllUris:Z

    return-void
.end method

.method public unregisterForContentChanges(Landroid/content/Context;)V
    .locals 0

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object p1, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->REGISTERED_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 232
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registeredTables:Ljava/util/Map;

    .line 233
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method
