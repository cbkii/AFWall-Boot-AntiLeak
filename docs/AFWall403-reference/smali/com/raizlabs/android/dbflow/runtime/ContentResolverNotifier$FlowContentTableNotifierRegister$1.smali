.class Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister$1;
.super Ljava/lang/Object;
.source "ContentResolverNotifier.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister$1;->this$0:Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister$1;->this$0:Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;

    .line 92
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->access$000(Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;)Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister$1;->this$0:Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;

    .line 93
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;->access$000(Lcom/raizlabs/android/dbflow/runtime/ContentResolverNotifier$FlowContentTableNotifierRegister;)Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/OnTableChangedListener;->onTableChanged(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;)V

    :cond_0
    return-void
.end method
