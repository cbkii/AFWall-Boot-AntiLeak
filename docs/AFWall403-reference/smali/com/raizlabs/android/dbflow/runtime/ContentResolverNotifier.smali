.class public Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier;
.super Ljava/lang/Object;
.source "ContentResolverNotifier.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;
    }
.end annotation


# instance fields
.field private final contentAuthority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier;->contentAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newRegister()Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;
    .locals 2

    .line 47
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier;->contentAuthority:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 3
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

    .line 28
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->shouldNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier;->contentAuthority:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v2

    .line 32
    invoke-virtual {p2, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getPrimaryConditionClause(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/OperatorGroup;->getConditions()Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-static {v1, v2, p3, p1}, Lcom/raizlabs/android/dbflow/sql/SqlUtils;->getNotificationUri(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;Ljava/lang/Iterable;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_0
    return-void
.end method

.method public notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 4
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

    .line 38
    invoke-static {}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->shouldNotify()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier;->contentAuthority:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;

    .line 40
    invoke-static {v1, p1, p2, v2}, Lcom/raizlabs/android/dbflow/sql/SqlUtils;->getNotificationUri(Ljava/lang/String;Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;[Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p1, v2, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_0
    return-void
.end method
