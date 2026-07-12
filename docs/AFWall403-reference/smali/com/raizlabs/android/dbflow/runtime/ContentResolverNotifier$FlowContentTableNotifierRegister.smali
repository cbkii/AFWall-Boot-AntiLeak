.class public Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;
.super Ljava/lang/Object;
.source "ContentResolverNotifier.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowContentTableNotifierRegister"
.end annotation


# instance fields
.field private final flowContentObserver:Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;

.field private final internalContentChangeListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

.field private tableChangedListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister$1;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister$1;-><init>(Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;)V

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->internalContentChangeListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    .line 57
    new-instance v1, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;

    invoke-direct {v1, p1}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->flowContentObserver:Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;

    .line 58
    invoke-virtual {v1, v0}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->addOnTableChangedListener(Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;)Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->tableChangedListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    return-object p0
.end method


# virtual methods
.method public isSubscribed()Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->flowContentObserver:Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;

    .line 84
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->isSubscribed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public register(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->flowContentObserver:Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;

    .line 63
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->registerForContentChanges(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public setListener(Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->tableChangedListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    return-void
.end method

.method public unregister(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->flowContentObserver:Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;

    .line 68
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->unregisterForContentChanges(Landroid/content/Context;)V

    return-void
.end method

.method public unregisterAll()V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->flowContentObserver:Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->internalContentChangeListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    .line 73
    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/runtime/FlowContentObserver;->removeTableChangedListener(Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->tableChangedListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    return-void
.end method
