.class public Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction;
.super Ljava/lang/Object;
.source "FastStoreModelTransaction.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;,
        Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;
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
.field final internalAdapter:Lcom/raizlabs/android/dbflow/structure/InternalAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/InternalAdapter<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field final processModelList:Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-object v0, p1, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;->models:Ljava/util/List;

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction;->models:Ljava/util/List;

    .line 81
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;->access$000(Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;)Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction;->processModelList:Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;

    .line 82
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;->access$100(Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;)Lcom/raizlabs/android/dbflow/structure/InternalAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction;->internalAdapter:Lcom/raizlabs/android/dbflow/structure/InternalAdapter;

    return-void
.end method

.method public static deleteBuilder(Lcom/raizlabs/android/dbflow/structure/InternalAdapter;)Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/structure/InternalAdapter<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder<",
            "TTModel;>;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$4;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$4;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;Lcom/raizlabs/android/dbflow/structure/InternalAdapter;)V

    return-object v0
.end method

.method public static insertBuilder(Lcom/raizlabs/android/dbflow/structure/InternalAdapter;)Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/structure/InternalAdapter<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder<",
            "TTModel;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$2;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$2;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;Lcom/raizlabs/android/dbflow/structure/InternalAdapter;)V

    return-object v0
.end method

.method public static saveBuilder(Lcom/raizlabs/android/dbflow/structure/InternalAdapter;)Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/structure/InternalAdapter<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder<",
            "TTModel;>;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$1;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$1;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;Lcom/raizlabs/android/dbflow/structure/InternalAdapter;)V

    return-object v0
.end method

.method public static updateBuilder(Lcom/raizlabs/android/dbflow/structure/InternalAdapter;)Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/structure/InternalAdapter<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder<",
            "TTModel;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;

    new-instance v1, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$3;

    invoke-direct {v1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$3;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$Builder;-><init>(Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;Lcom/raizlabs/android/dbflow/structure/InternalAdapter;)V

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction;->models:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction;->processModelList:Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction;->internalAdapter:Lcom/raizlabs/android/dbflow/structure/InternalAdapter;

    .line 88
    invoke-interface {v1, v0, v2, p1}, Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;->processModel(Ljava/util/List;Lcom/raizlabs/android/dbflow/structure/InternalAdapter;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    :cond_0
    return-void
.end method
