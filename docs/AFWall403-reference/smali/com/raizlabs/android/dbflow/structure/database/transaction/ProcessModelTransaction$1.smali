.class Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;
.super Ljava/lang/Object;
.source "ProcessModelTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

.field final synthetic val$finalI:I

.field final synthetic val$model:Ljava/lang/Object;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;IILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    iput p2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;->val$finalI:I

    iput p3, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;->val$size:I

    iput-object p4, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;->val$model:Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;

    .line 79
    iget-object v1, v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->processListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener;

    iget v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;->val$finalI:I

    int-to-long v2, v0

    iget v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;->val$size:I

    int-to-long v4, v0

    iget-object v6, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;->val$model:Ljava/lang/Object;

    invoke-interface/range {v1 .. v6}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener;->onModelProcessed(JJLjava/lang/Object;)V

    return-void
.end method
