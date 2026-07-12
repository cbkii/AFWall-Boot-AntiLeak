.class public Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionManager;
.super Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;
.source "DefaultTransactionManager.java"


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;

    const-string v1, "DBFlow Transaction Queue"

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/DefaultTransactionQueue;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/runtime/BaseTransactionManager;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransactionQueue;Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;)V

    return-void
.end method
