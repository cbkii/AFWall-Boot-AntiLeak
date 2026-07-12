.class Lcom/raizlabs/android/dbflow/list/FlowQueryList$2;
.super Ljava/lang/Object;
.source "FlowQueryList.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/list/FlowQueryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/list/FlowQueryList;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$2;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processModel(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/list/FlowQueryList$2;->this$0:Lcom/raizlabs/android/dbflow/list/FlowQueryList;

    .line 616
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/list/FlowQueryList;->getModelAdapter()Lcom/raizlabs/android/dbflow/structure/ModelAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/raizlabs/android/dbflow/structure/ModelAdapter;->update(Ljava/lang/Object;)Z

    return-void
.end method
