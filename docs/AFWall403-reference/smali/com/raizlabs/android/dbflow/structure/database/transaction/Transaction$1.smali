.class Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$1;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->executeSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$1;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$1;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    .line 132
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->successCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$1;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    invoke-interface {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Success;->onSuccess(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V

    return-void
.end method
