.class public interface abstract Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction$QueryResultListCallback;
.super Ljava/lang/Object;
.source "QueryTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryResultListCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onListQueryResult(Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/transaction/QueryTransaction;",
            "Ljava/util/List<",
            "TTResult;>;)V"
        }
    .end annotation
.end method
