.class Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$3;
.super Ljava/lang/Object;
.source "QueryTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$3;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$3;->val$result:Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$3;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;

    .line 118
    iget-object v0, v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;->queryResultSingleCallback:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$3;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$3;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultSingleCallback;->onSingleQueryResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Ljava/lang/Object;)V

    return-void
.end method
