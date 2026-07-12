.class Lcom/raizlabs/android/dbflow/list/FlowQueryList$4;
.super Ljava/lang/Object;
.source "FlowQueryList.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/list/FlowQueryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$4;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$4;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 632
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->access$1100(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$4;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 633
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->access$1100(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;->onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
