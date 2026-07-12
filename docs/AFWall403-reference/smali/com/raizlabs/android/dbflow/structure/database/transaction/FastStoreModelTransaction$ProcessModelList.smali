.class interface abstract Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction$ProcessModelList;
.super Ljava/lang/Object;
.source "FastStoreModelTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/database/transaction/FastStoreModelTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ProcessModelList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract processModel(Ljava/util/List;Lcom/raizlabs/android/dbflow/structure/InternalAdapter;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/InternalAdapter<",
            "TTModel;>;",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")V"
        }
    .end annotation
.end method
