.class public Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;
.super Ljava/lang/Object;
.source "ProcessModelTransaction.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;"
    }
.end annotation


# instance fields
.field final models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final processListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final processModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final runProcessListenerOnSameThread:Z


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->processListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->processListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener;

    .line 58
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->models:Ljava/util/List;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->models:Ljava/util/List;

    .line 59
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->access$000(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;)Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->processModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    .line 60
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;->access$100(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->runProcessListenerOnSameThread:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 9

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->models:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->models:Ljava/util/List;

    .line 68
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->processModel:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;

    .line 69
    invoke-interface {v2, v8, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$ProcessModel;->processModel(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    iget-object v3, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->processListener:Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener;

    if-eqz v3, :cond_1

    iget-boolean v2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;->runProcessListenerOnSameThread:Z

    if-eqz v2, :cond_0

    int-to-long v4, v1

    int-to-long v6, v0

    .line 73
    invoke-interface/range {v3 .. v8}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$OnModelProcessListener;->onModelProcessed(JJLjava/lang/Object;)V

    goto :goto_1

    .line 76
    :cond_0
    invoke-static {}, Lcom/raizlabs/android/dbflow/structure/database/transaction/Transaction;->getTransactionHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;

    invoke-direct {v3, p0, v1, v0, v8}, Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction$1;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/ProcessModelTransaction;IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
