.class public Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;
.super Ljava/lang/Object;
.source "DirectModelNotifier.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;,
        Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$ModelChangedListener;,
        Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;
    }
.end annotation


# static fields
.field private static notifier:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;


# instance fields
.field private final modelChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final singleRegister:Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;

.field private final tableChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->modelChangedListenerMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->tableChangedListenerMap:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;-><init>(Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$1;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->singleRegister:Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;

    sget-object v0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->notifier:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot instantiate more than one DirectNotifier. Use DirectNotifier.get()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get()Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->notifier:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;-><init>()V

    sput-object v0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->notifier:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->notifier:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    return-object v0
.end method


# virtual methods
.method public newRegister()Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->singleRegister:Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;

    return-object v0
.end method

.method public notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->modelChangedListenerMap:Ljava/util/Map;

    .line 63
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_1

    .line 65
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1, p3}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;->onModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->tableChangedListenerMap:Ljava/util/Map;

    .line 75
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v1, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerForModelChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$ModelChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$ModelChangedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->registerForModelStateChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;)V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->registerForTableChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V

    return-void
.end method

.method public registerForModelStateChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->modelChangedListenerMap:Ljava/util/Map;

    .line 98
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->modelChangedListenerMap:Ljava/util/Map;

    .line 101
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerForTableChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->tableChangedListenerMap:Ljava/util/Map;

    .line 108
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->tableChangedListenerMap:Ljava/util/Map;

    .line 111
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterForModelChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$ModelChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$ModelChangedListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->unregisterForModelStateChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;)V

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->unregisterForTableChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V

    return-void
.end method

.method public unregisterForModelStateChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$OnModelStateChangedListener<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->modelChangedListenerMap:Ljava/util/Map;

    .line 125
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterForTableChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->tableChangedListenerMap:Ljava/util/Map;

    .line 133
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
