.class Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;
.super Ljava/lang/Object;
.source "PriorityTransactionQueue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PriorityEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry<",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final entry:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue;

.field final transactionWrapper:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue;Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->this$0:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->entry:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    .line 133
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->transaction()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    move-result-object p1

    instance-of p1, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->transaction()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    move-result-object p1

    check-cast p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->transactionWrapper:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    goto :goto_0

    .line 136
    :cond_0
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->transaction()Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;)V

    .line 137
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;->build()Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->transactionWrapper:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    :goto_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry<",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->transactionWrapper:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    .line 147
    iget-object p1, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->transactionWrapper:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;->compareTo(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 126
    check-cast p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->compareTo(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    check-cast p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->transactionWrapper:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    .line 161
    iget-object p1, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->transactionWrapper:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getEntry()Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->entry:Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionQueue$PriorityEntry;->transactionWrapper:Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
