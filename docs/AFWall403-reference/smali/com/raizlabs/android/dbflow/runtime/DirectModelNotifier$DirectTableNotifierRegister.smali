.class Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;
.super Ljava/lang/Object;
.source "DirectModelNotifier.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/runtime/TableNotifierRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectTableNotifierRegister"
.end annotation


# instance fields
.field private final internalChangeListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

.field private modelChangedListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

.field private registeredTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;


# direct methods
.method private constructor <init>(Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->this$0:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->registeredTables:Ljava/util/List;

    .line 175
    new-instance p1, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister$1;

    invoke-direct {p1, p0}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister$1;-><init>(Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->internalChangeListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;-><init>(Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;)V

    return-void
.end method

.method static synthetic access$100(Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;)Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->modelChangedListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    return-object p0
.end method


# virtual methods
.method public isSubscribed()Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->registeredTables:Ljava/util/List;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->registeredTables:Ljava/util/List;

    .line 147
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->this$0:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->internalChangeListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    .line 148
    invoke-virtual {v0, p1, v1}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->registerForTableChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V

    return-void
.end method

.method public setListener(Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->modelChangedListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    return-void
.end method

.method public unregister(Ljava/lang/Class;)V
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

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->registeredTables:Ljava/util/List;

    .line 153
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->this$0:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->internalChangeListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    .line 154
    invoke-virtual {v0, p1, v1}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->unregisterForTableChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V

    return-void
.end method

.method public unregisterAll()V
    .locals 4

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->registeredTables:Ljava/util/List;

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->this$0:Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->internalChangeListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    .line 160
    invoke-virtual {v2, v1, v3}, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier;->unregisterForTableChanges(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DirectModelNotifier$DirectTableNotifierRegister;->modelChangedListener:Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    return-void
.end method
