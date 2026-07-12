.class public Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;
.super Ljava/lang/Object;
.source "NotifyDistributor.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;


# static fields
.field private static distributor:Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->distributor:Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;-><init>()V

    sput-object v0, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->distributor:Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    :cond_0
    sget-object v0, Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;->distributor:Lcom/raizlabs/android/dbflow/runtime/NotifyDistributor;

    return-object v0
.end method


# virtual methods
.method public newRegister()Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot create a register from the distributor class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/ModelAdapter<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->getModelClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelNotifierForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    move-result-object v0

    .line 35
    invoke-interface {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;->notifyModelChanged(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/ModelAdapter;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    return-void
.end method

.method public notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getModelNotifierForTable(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/ModelNotifier;->notifyTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    return-void
.end method
