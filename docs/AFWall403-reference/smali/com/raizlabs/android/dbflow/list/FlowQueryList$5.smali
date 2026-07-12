.class Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;
.super Ljava/lang/Object;
.source "FlowQueryList.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;


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

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 641
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->access$1200(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 642
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->refreshAsync()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    const/4 v1, 0x1

    .line 644
    invoke-static {v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->access$1302(Lcom/raizlabs/android/dbflow/list/FlowQueryList;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 647
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->access$1400(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$5;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 648
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->access$1400(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;->onSuccess(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V

    :cond_1
    return-void
.end method
