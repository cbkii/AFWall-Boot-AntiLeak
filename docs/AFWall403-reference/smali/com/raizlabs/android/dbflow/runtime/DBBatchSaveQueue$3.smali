.class Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$3;
.super Ljava/lang/Object;
.source "DBBatchSaveQueue.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$3;->this$0:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$3;->this$0:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    .line 261
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->access$100(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue$3;->this$0:Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;

    .line 262
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;->access$100(Lcom/raizlabs/android/dbflow/runtime/DBBatchSaveQueue;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;->onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
