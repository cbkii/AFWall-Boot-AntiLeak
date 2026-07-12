.class Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$1;
.super Ljava/lang/Object;
.source "BaseAsyncObject.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$1;->this$0:Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$1;->this$0:Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;

    .line 81
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->access$000(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$1;->this$0:Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;

    .line 82
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->access$000(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction$Error;->onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$1;->this$0:Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;

    .line 84
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->onError(Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject$1;->this$0:Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;

    const/4 p2, 0x0

    .line 85
    invoke-static {p1, p2}, Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;->access$102(Lcom/raizlabs/android/dbflow/sql/BaseAsyncObject;Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    return-void
.end method
