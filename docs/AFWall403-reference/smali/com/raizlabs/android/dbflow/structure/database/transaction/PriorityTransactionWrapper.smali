.class public Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;
.super Ljava/lang/Object;
.source "PriorityTransactionWrapper.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Priority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;",
        "Ljava/lang/Comparable<",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final PRIORITY_UI:I = 0x5


# instance fields
.field private final priority:I

.field private final transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;->access$000(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;->priority:I

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;->access$000(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;)I

    move-result v0

    iput v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;->priority:I

    .line 52
    :goto_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;->access$100(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper$Builder;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;->transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;)I
    .locals 1

    .line 62
    iget p1, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;->priority:I

    iget v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;->priority:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;->compareTo(Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;)I

    move-result p1

    return p1
.end method

.method public execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/PriorityTransactionWrapper;->transaction:Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;

    .line 57
    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;->execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method
